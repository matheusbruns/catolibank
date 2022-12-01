import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../cobra_receber/cobra_receber_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CobrarFinalWidget extends StatefulWidget {
  const CobrarFinalWidget({Key? key}) : super(key: key);

  @override
  _CobrarFinalWidgetState createState() => _CobrarFinalWidgetState();
}

class _CobrarFinalWidgetState extends State<CobrarFinalWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserChargesRecord>>(
      stream: queryUserChargesRecord(
        queryBuilder: (userChargesRecord) => userChargesRecord
            .where('cpfCharge', isEqualTo: FFAppState().pixCharge)
            .where('uid', isEqualTo: FFAppState().uidCharge),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitFadingFour(
                color: Color(0x99E4DDDD),
                size: 40,
              ),
            ),
          );
        }
        List<UserChargesRecord> cobrarFinalUserChargesRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final cobrarFinalUserChargesRecord =
            cobrarFinalUserChargesRecordList.isNotEmpty
                ? cobrarFinalUserChargesRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF121212),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.3, 0.5),
                            child: Container(
                              width: 450,
                              height: 500,
                              decoration: BoxDecoration(
                                color: Color(0xFF121212),
                              ),
                              child: Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Stack(
                                        children: [
                                          Stack(
                                            children: [
                                              Stack(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.17,
                                                                    -0.45),
                                                            child: Text(
                                                              'Pagamento realizado!',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        26,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0.11),
                                                        child: Container(
                                                          width: 259,
                                                          height: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1C1919),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.45,
                                                                          0.35),
                                                                  child: Text(
                                                                    'Cobrança aprovada!',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0, 0.35),
                                                child: Container(
                                                  width: 260,
                                                  height: 26,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF3C3939),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10),
                                                      topLeft:
                                                          Radius.circular(0),
                                                      topRight:
                                                          Radius.circular(0),
                                                    ),
                                                  ),
                                                  child: StreamBuilder<
                                                      List<UsersRecord>>(
                                                    stream: queryUsersRecord(
                                                      queryBuilder: (usersRecord) =>
                                                          usersRecord.where(
                                                              'uid',
                                                              isEqualTo:
                                                                  FFAppState()
                                                                      .uidCharge),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitFadingFour(
                                                              color: Color(
                                                                  0x99E4DDDD),
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<UsersRecord>
                                                          buttonUsersRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the document does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final buttonUsersRecord =
                                                          buttonUsersRecordList
                                                                  .isNotEmpty
                                                              ? buttonUsersRecordList
                                                                  .first
                                                              : null;
                                                      return FFButtonWidget(
                                                        onPressed: () async {
                                                          final usersUpdateData =
                                                              {
                                                            'balance': FieldValue
                                                                .increment(
                                                                    FFAppState()
                                                                        .amountFinish),
                                                          };
                                                          await buttonUsersRecord!
                                                              .reference
                                                              .update(
                                                                  usersUpdateData);

                                                          final userChargesUpdateData =
                                                              {
                                                            'amouth': FieldValue
                                                                .delete(),
                                                          };
                                                          await cobrarFinalUserChargesRecord!
                                                              .reference
                                                              .update(
                                                                  userChargesUpdateData);
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  CobraReceberWidget(),
                                                            ),
                                                          );
                                                        },
                                                        text: 'Voltar ao menu',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 130,
                                                          height: 40,
                                                          color:
                                                              Color(0xFF3C3939),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.05, 0),
                                            child: Text(
                                              formatNumber(
                                                FFAppState().amountFinish,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.commaDecimal,
                                                currency: 'R\$ ',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Lexend',
                                                        color:
                                                            Color(0xFFFF029A),
                                                        fontSize: 26,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
