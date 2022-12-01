import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../cobrar_final/cobrar_final_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CobraReceberWidget extends StatefulWidget {
  const CobraReceberWidget({Key? key}) : super(key: key);

  @override
  _CobraReceberWidgetState createState() => _CobraReceberWidgetState();
}

class _CobraReceberWidgetState extends State<CobraReceberWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        queryBuilder: (usersRecord) =>
            usersRecord.where('uid', isEqualTo: currentUserUid),
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
        List<UsersRecord> cobraReceberUsersRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final cobraReceberUsersRecord = cobraReceberUsersRecordList.isNotEmpty
            ? cobraReceberUsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF121212),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: StreamBuilder<List<UserTransactionRecord>>(
                stream: queryUserTransactionRecord(
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
                  List<UserTransactionRecord> stackUserTransactionRecordList =
                      snapshot.data!;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final stackUserTransactionRecord =
                      stackUserTransactionRecordList.isNotEmpty
                          ? stackUserTransactionRecordList.first
                          : null;
                  return Stack(
                    children: [
                      StreamBuilder<List<UserReceivedRecord>>(
                        stream: queryUserReceivedRecord(
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
                          List<UserReceivedRecord> stackUserReceivedRecordList =
                              snapshot.data!;
                          // Return an empty Container when the document does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final stackUserReceivedRecord =
                              stackUserReceivedRecordList.isNotEmpty
                                  ? stackUserReceivedRecordList.first
                                  : null;
                          return Stack(
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
                                                            0, 1.2),
                                                    child: Container(
                                                      width: 400,
                                                      height: 650,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .background,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            flex: 999,
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.1,
                                                                      -0.55),
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                child: StreamBuilder<
                                                                    List<
                                                                        UserChargesRecord>>(
                                                                  stream:
                                                                      queryUserChargesRecord(
                                                                    parent:
                                                                        currentUserReference,
                                                                    queryBuilder: (userChargesRecord) => userChargesRecord
                                                                        .where(
                                                                            'cpfCharge',
                                                                            isEqualTo: valueOrDefault(
                                                                                currentUserDocument
                                                                                    ?.cpf,
                                                                                0))
                                                                        .orderBy(
                                                                            'amouth',
                                                                            descending:
                                                                                true),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          child:
                                                                              SpinKitFadingFour(
                                                                            color:
                                                                                Color(0x99E4DDDD),
                                                                            size:
                                                                                40,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<UserChargesRecord>
                                                                        listViewUserChargesRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewUserChargesRecordList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewUserChargesRecord =
                                                                            listViewUserChargesRecordList[listViewIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              17,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-0.05, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 240,
                                                                                      height: 80,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(600),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-0.1, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1, 0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: Card(
                                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                  color: Color(0x00FFFFFF),
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(40),
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                                    child: Icon(
                                                                                                      Icons.monetization_on_rounded,
                                                                                                      color: Color(0xFFFF0206),
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              'Valor',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Lexend',
                                                                                                    fontSize: 16,
                                                                                                  ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(-1, 0.05),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                                  child: Text(
                                                                                                    formatNumber(
                                                                                                      listViewUserChargesRecord.amouth!,
                                                                                                      formatType: FormatType.decimal,
                                                                                                      decimalType: DecimalType.commaDecimal,
                                                                                                      currency: 'R\$ ',
                                                                                                    ),
                                                                                                    textAlign: TextAlign.end,
                                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                          fontFamily: 'Lexend',
                                                                                                          color: Color(0xFFFF0206),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                                      child: Container(
                                                                                        width: 110,
                                                                                        height: 80,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(600),
                                                                                          shape: BoxShape.rectangle,
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: AlignmentDirectional(0.1, 0.1),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    borderWidth: 1,
                                                                                                    buttonSize: 40,
                                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                                    icon: Icon(
                                                                                                      Icons.check,
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      size: 20,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      final usersUpdateData = {
                                                                                                        'balance': FieldValue.increment(-(listViewUserChargesRecord.amouth!)),
                                                                                                      };
                                                                                                      await currentUserReference!.update(usersUpdateData);
                                                                                                      setState(() => FFAppState().uidCharge = listViewUserChargesRecord.uid!);
                                                                                                      setState(() => FFAppState().pixCharge = listViewUserChargesRecord.cpfCharge!);
                                                                                                      setState(() => FFAppState().amountFinish = listViewUserChargesRecord.amouth!);

                                                                                                      final userTransactionCreateData = createUserTransactionRecordData(
                                                                                                        amount: FFAppState().amountFinish,
                                                                                                        uid: currentUserUid,
                                                                                                      );
                                                                                                      await UserTransactionRecord.createDoc(currentUserReference!).set(userTransactionCreateData);

                                                                                                      final userReceivedCreateData = createUserReceivedRecordData(
                                                                                                        historyReceived: FFAppState().amountFinish,
                                                                                                        uid: FFAppState().uidCharge,
                                                                                                      );
                                                                                                      await UserReceivedRecord.createDoc(stackUserReceivedRecord!.parentReference).set(userReceivedCreateData);
                                                                                                      await Navigator.push(
                                                                                                        context,
                                                                                                        MaterialPageRoute(
                                                                                                          builder: (context) => CobrarFinalWidget(),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 30,
                                                                                                    buttonSize: 40,
                                                                                                    fillColor: Color(0xFFE10303),
                                                                                                    icon: Icon(
                                                                                                      Icons.close,
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      size: 20,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      final userChargesUpdateData = {
                                                                                                        'amouth': FieldValue.delete(),
                                                                                                      };
                                                                                                      await listViewUserChargesRecord.reference.update(userChargesUpdateData);
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ],
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
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.95, -0.96),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                NavBarPage(
                                                                    initialPage:
                                                                        'HomePage'),
                                                          ),
                                                        );
                                                      },
                                                      text: '',
                                                      icon: FaIcon(
                                                        FontAwesomeIcons
                                                            .angleLeft,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 50,
                                                        height: 50,
                                                        color:
                                                            Color(0x00B7076F),
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
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.74, -0.75),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: Text(
                                                    'Lista de cobranças pendentes',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          fontSize: 18,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.6, -0.8),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(1, 1, 0, 0),
                          child: Text(
                            'Cobranças pendentes',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
