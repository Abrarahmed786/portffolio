import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:pro/components/profile/profile_component.dart';
import 'package:pro/components/skills/technical_skills_component.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkTheme = true;

  @override
  Widget build(BuildContext context) {
    bool isWidth =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        backgroundColor:
            darkTheme ? const Color(0xff121212) : const Color(0xffffffff),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: isWidth
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProfileComponent(
                              darkTheme: darkTheme,
                            ),
                            TechnicalSkillsComponent(darkTheme: darkTheme),
                          ],
                        ),
                      ),
                      Expanded(
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    child: SegmentedTabControl(
                                      // Customization of widget
                                      radius: Radius.circular(20),
                                      squeezeIntensity: 2,
                                      height: 40,
                                      tabPadding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 0),
                                      tabs: [
                                        SegmentTab(
                                          label: 'EXPRIENCE',
                                        ),
                                        SegmentTab(
                                          label: 'EDUCATION',
                                        ),
                                        SegmentTab(label: 'PROJECTS'),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        darkTheme =
                                            !darkTheme; // Toggled the darkTheme value
                                      });
                                    },
                                    icon: Icon(
                                      darkTheme ? Icons.sunny : Icons.dark_mode,
                                      color: !darkTheme
                                          ? const Color(0xff121212)
                                          : const Color(0xffffffff),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                ],
                              ),
                              // Sample pages
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 16, right: 32),
                                  child: TabBarView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      TechnicalSkillsComponent(
                                          darkTheme: darkTheme),
                                      TechnicalSkillsComponent(
                                          darkTheme: darkTheme),
                                      TechnicalSkillsComponent(
                                          darkTheme: darkTheme)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileComponent(
                        darkTheme: darkTheme,
                      ),
                      TechnicalSkillsComponent(darkTheme: darkTheme),
                    ],
                  ),
          ),
        ),
        floatingActionButton: !isWidth
            ? FloatingActionButton(
                backgroundColor: !darkTheme
                    ? const Color(0xff121212)
                    : const Color(0xffffffff),
                onPressed: () {
                  setState(() {
                    darkTheme = !darkTheme; // Toggled the darkTheme value
                  });
                },
                child: Icon(
                  darkTheme ? Icons.sunny : Icons.dark_mode,
                  color: darkTheme
                      ? const Color(0xff121212)
                      : const Color(0xffffffff),
                ),
              )
            : Container(),
      ),
    );
  }
}
