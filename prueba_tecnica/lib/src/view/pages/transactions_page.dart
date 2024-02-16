import 'package:flutter/material.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/src/provider/provider.dart';
import 'package:prueba_tecnica/src/services/firebase/firebase_services.dart';
import 'package:prueba_tecnica/src/shared/widgets/custom_alert.dart';
import 'package:prueba_tecnica/src/shared/widgets/widgets.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final myData = Provider.of<MyDataProvider>(context);
    final pr = ProgressDialog(
      context,
      type: ProgressDialogType.normal,
      isDismissible: false,
      showLogs: false,
    );
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextForm(),
              const SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: CustomButton(
                    text: 'Transferir',
                    onPressed: () async {
                      if (myData.todosLosCamposLlenos != true) {
                        showAlertTextEmpty(
                          context,
                        );
                      } else {
                        await pr.show();
                        var (String response, bool flag) =
                            await validateTranfer(
                                originUser: myData.originCC,
                                destinationUser: myData.destinationCC,
                                amount: int.parse(myData.amountTransferred),
                                targetAccount: myData.destinationAccount,
                                ownerAccount: myData.originAccount);

                        await pr.hide();
                        // ignore: use_build_context_synchronously
                        showAlert(
                            context,
                            response,
                            Icon(
                              flag == true ? Icons.check_circle : Icons.error,
                              color: const Color.fromARGB(255, 7, 80, 59),
                              size: 110,
                            ), () {
                          Navigator.pop(context);
                        });

                        await pr.hide();
                      }
                    }),
              )
            ],
          )),
    ));
  }

  @override
  bool get wantKeepAlive => true;
}
