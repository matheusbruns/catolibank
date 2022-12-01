import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).grayLight,
            size: 32,
          ),
        ),
        title: Text(
          'Política de privacidade',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: StreamBuilder<UsersRecord>(
        stream: UsersRecord.getDocument(currentUserReference!),
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
          final columnUsersRecord = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Como usamos seus dados',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 44),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'No Grupo CatoliBank (“CatoliBank”), buscamos proporcionar a melhor experiência para garantir que você desfrute ao máximo dos nossos serviços. E, para isso, a sua privacidade e a segurança dos seus dados pessoais são e sempre serão muito importantes para nós.\n\n2. Duração do tratamento dos dados pessoais:\nO prazo de tratamento dos seus dados pessoais pelo CatoliBank variará de acordo com os tipos de produtos e serviços contratados/prestados/fornecidos, de acordo com as finalidades do tratamento dos dados pessoais, ou de acordo com as disposições contratuais e legais em questão.\n\n3.  Compartilhamento dos dados pessoais:\nO CatoliBank zela pela privacidade dos seus titulares de dados e, em conformidade com as normas de proteção de dados e sigilo bancário, somente compartilha suas informações para as finalidades previstas nesse Termo e na Política de Privacidade completa.\n\n4. Canais de atendimento para assuntos de privacidade\nPara que você possa exercer seus direitos como titular de dados, bem como determinar suas preferências no tratamento e utilização pelo CatoliBank de alguns de seus dados pessoais você pode usar os canais de atendimento oficiais disponíveis na página inicial do CatoliBank.\n\nQuer saber mais? Consulte nossa Política de Privacidade completa entrando em contado atravéz do email !\nprivacidade@bancocatolibank.com.br',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
