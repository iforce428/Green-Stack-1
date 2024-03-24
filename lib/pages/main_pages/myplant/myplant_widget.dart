import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'myplant_model.dart';
export 'myplant_model.dart';

class MyplantWidget extends StatefulWidget {
  const MyplantWidget({super.key});

  @override
  State<MyplantWidget> createState() => _MyplantWidgetState();
}

class _MyplantWidgetState extends State<MyplantWidget>
    with TickerProviderStateMixin {
  late MyplantModel _model;

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
    _model = createModel(context, () => MyplantModel());

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
                  'assets/images/bg-8.png',
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'My Plant 🌱',
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
                                  ],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 315.0,
                                      height: 90.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x3A8FBD4F),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Humidity        ',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Temperature ',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium,
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, -1.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Light             ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    '72%                     ',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Text(
                                                    '25 C                             ',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, -1.0),
                                                    child: Text(
                                                      'Good                ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.909,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF8FBD4F),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        offset: const Offset(1.0, 1.0),
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                    border: Border.all(
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 5.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Screenshot_2024-03-21_102641.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Text(
                                                        'Lettuce',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 20.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              lineHeight: 1.5,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '5 Weeks',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        CircularPercentIndicator(
                                          percent: 0.7,
                                          radius: 35.0,
                                          lineWidth: 10.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor: const Color(0xFF0D541C),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          center: Text(
                                            '70%',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('tomato');
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.909,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF8FBD4F),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            offset: const Offset(1.0, 1.0),
                                            spreadRadius: 1.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        border: Border.all(
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 5.0, 15.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/tomato.png',
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              'Tomato',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        20.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    lineHeight:
                                                                        1.5,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '7 Weeks',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CircularPercentIndicator(
                                              percent: 0.88,
                                              radius: 35.0,
                                              lineWidth: 10.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor: const Color(0xFF0D541C),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                              center: Text(
                                                '88%',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.909,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF8FBD4F),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          offset: const Offset(1.0, 1.0),
                                          spreadRadius: 1.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(14.0),
                                      border: Border.all(
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 15.0, 5.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Bok_Choy_(2).png',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Text(
                                                          'Bok Choy',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '3 Weeks',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          CircularPercentIndicator(
                                            percent: 0.33,
                                            radius: 35.0,
                                            lineWidth: 10.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor: const Color(0xFF0D541C),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                            center: Text(
                                              '33%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium,
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
