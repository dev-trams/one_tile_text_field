import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_tile_text_field/widgets/w_licenses_text_field.dart';

Scaffold loginScreen({required BuildContext context}) {
  return Scaffold(
    body: SizedBox(
      child: Column(
        children: [
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      wLicensesTextField(
                        context: context,
                      ),
                      wLicensesTextField(
                        context: context,
                      ),
                      wLicensesTextField(
                        context: context,
                      ),
                      wLicensesTextField(
                        context: context,
                      ),
                      const SizedBox(
                        width: 30,
                        child: Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            height: 3,
                          ),
                        ),
                      ),
                      wLicensesTextField(
                        context: context,
                      ),
                      wLicensesTextField(
                        context: context,
                      ),
                      wLicensesTextField(
                        context: context,
                      ),
                      wLicensesTextField(
                        context: context,
                        state: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 100,
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print(licensesBuffer);
                        if (licensesBuffer.toString() == '5f2a1fe1') {
                          Navigator.pushNamed(context, '/');
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                              title: Text('!경고!'),
                              content: Text(
                                  '라이센스 키가 잘못되었습니다.\n다시 확인하시거나 담당자에게 문의하세요.'),
                            ),
                          );
                          licensesBuffer.clear();
                        }
                      },
                      child: const Center(
                        child: Text(
                          '인증',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
