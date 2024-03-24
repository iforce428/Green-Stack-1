import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'monitor_plants_model.dart';
export 'monitor_plants_model.dart';

class MonitorPlantsWidget extends StatefulWidget {
  const MonitorPlantsWidget({super.key});

  @override
  State<MonitorPlantsWidget> createState() => _MonitorPlantsWidgetState();
}

class _MonitorPlantsWidgetState extends State<MonitorPlantsWidget>
    with TickerProviderStateMixin {
  late MonitorPlantsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 40.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MonitorPlantsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/bg-7.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 48.0,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 35.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('cart');
                        },
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 20.0, 0.0),
                          child: Stack(
                            alignment:
                                const AlignmentDirectional(0.3999999999999999, -0.35),
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 48.0,
                                icon: Icon(
                                  Icons.toc_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 30.0, 15.0, 30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Plant Diagnosis  ',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.camera_alt,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 35.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/trosak.png',
                                width: 300.0,
                                height: 519.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.picture_in_picture_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40.0,
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('plantDiagnosis');
                                  },
                                  child: Icon(
                                    Icons.camera_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 40.0,
                                  ),
                                ),
                                Icon(
                                  Icons.flash_on,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
