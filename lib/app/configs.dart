import 'package:flutter/material.dart';
import 'package:portfolio/app/icons.dart';
import 'package:portfolio/core/models/project.dart';
import 'package:portfolio/core/models/skill_display.dart';
import 'package:portfolio/core/models/skill_model.dart';
import 'package:portfolio/core/models/technologies.dart';
import 'package:portfolio/core/models/timeline_experience.dart';

//*Social Media Links
mixin SocialLinks {
  static const String linkedinUrl =
      "https://www.linkedin.com/in";
  static const String twitterLink = "https://twitter.com/Naren05S";
  static const String githubLink = "https://github.com/naren05S";

}

//*System Defaults
mixin SystemProperties {
  static const String fontName = "Montserrat";
  static const String titleFont = "Lato";
}

//*Education Details
mixin EducationDetails {
  static const String collegeName = "Divine Child Jr College";
  static const String collegeTimeline = "2014 - 2016";
  static const String collegeStream = "HSC";

  static const String universityStream = "Computer Science and Engineering";
  static const String universityName = "St.John College of Enginnering and Management";
  static const String universityTimeline = "2016 - 2020";

  static const String schoolStream = "SSC";
  static const String schoolName = "St.Lawrance High School";
  static const String schoolTimeline = "2013 - 2014";

  static const double universityPercentage = 65;
  static const double schoolPercentage = 72;
  static const double collegePercentage = 66;
}

//*Personal details
mixin PersonalDetails {
  static const List<SkillDisplay> skillDisplayList = [
    SkillDisplay(
        title: "Mobile Application Developement",
        color: Color(0xFFE2A599),
        iconData: SkillDisplayIcons.appIcon),
    SkillDisplay(
        title: "Web Developement",
        color: Color(0xFF5E57BB),
        iconData: SkillDisplayIcons.websiteIcon),
    SkillDisplay(
        title: "U/I Developer",
        color: Color(0xFFE45447),
        iconData: SkillDisplayIcons.mlIcon),
    /*SkillDisplay(
        title: "Database Management",
        color: Color(0xFFFFB300),
        iconData: SkillDisplayIcons.databaseIcon)*/
  ];
  static const String resumeLink ="https://drive.google.com/file/d/1XvYLEJVeL1IjZsmU7rTU9AkdQrfDp_p-/view?usp=sharing";
  static const String whatsappLink = "https://wa.me/9702333759";
  static const List<Technologies> techList = [
    Technologies(icon: TechnologiesIcon.reactJsIcon, name: "React JS"),
    Technologies(icon: TechnologiesIcon.javaIcon, name: "Java"),
    Technologies(icon: TechnologiesIcon.pythonIcon, name: "Python")
  ];
  static const String githubUserName = "naren05S";
  static const String githubDataUrl =
      "https://api.github.com/users/$githubUserName/repos";
  static List<Project> projectsList = [
    Project(
        id: "0",
        type: ["Application"],
        title: "Sneaker Hub",
        githubLink: "https://github.com/naren05S/SneakerHead",
        description:
            "Created a flutter app for showcase sneaker collection ",
        tools: ["Flutter"]),
    Project(
        id: "1",
        type: ["Application"],
        title: "TO DO APP",
        githubLink: "https://github.com/naren05S/To_Do_App",
        description:
            "A basic todo app which is build in flutter.",
        tools:  ["Flutter"]),
    Project(
        id: "2",
        type: ["Game"],
        title: "Color Game Using Tkinter",
        githubLink: "https://github.com/naren05S/colorgame-using-tkinter",
        description:
            "Build game using python library tkinter which is easily for  develop GUI.",
        tools: ["Python"]),
    Project(
        id: "3",
        type: ["Website", "Application"],
        websiteLink: "https://shashiben.github.io",
        description:
            "Created portfolio using flutter,Supports for mac os,windows,linux,web,ios,android",
        githubLink: "https://github.com/naren05S/portfolio",
        title: "Portfolio",
        tools: ["Flutter"]),
  ];
  static const List<String> skillsList = [
    "Flutter",
    "Git",
    "Firebase",
    "Python",
    "Figma",
    "HTML",
    "CSS",
    "JS",
  ];

  static const List<ExperienceTimeline> experienceList = [
    ExperienceTimeline(
        title: "Rupeeseed Technology \nVentures Pvt Ltd",
        position: "Mobile App Developer",
        timePeriod: "Aug 2020 - Present",
        description: [
          "Worked collaboratively with designer to bring mobile app to life",
          "Understand how to optimize client-facing software",
          "Knowledge and understanding of Firebase",
          "Experienced in working with remote data via REST and JSON",
        ],
        tools: [
          "Flutter",
          "Firebase",
          "GIT",
          "Rest API"
        ]),
    ExperienceTimeline(
        title: "Internship",
        position: "Web Developer",
        timePeriod: "Jun 2019 - Jul 2019",
        description: [
          "Converted mockups into HTML, JavaScript and JSON.",
          "Implemented Google Campaigns and SEO for various types of websites.",
          "Reviewed code to validate structures, assess security and verify browser, device and operating system compatibility",
        ],
        tools: [
          "Html",
          "Css",
          "JS",
          "Json"
        ]),
  ];
  static const String email = "nshekhawat997@gmail.com";
  static List<SkillModel> featuredSkills = [
    SkillModel(name: "Mobile Application Developement", percent: 95),
    SkillModel(name: "Web Developer", percent: 80),
    SkillModel(name: "UI/UX Designer", percent: 84),
  ];

  static const String userName = "Narendra Shekhawat";
  static const String shortIntro =
      "I’m Narendra Shekhawat and I’m a flutter developer, and I specialize in building efficient Flutter Applications that just work across all platforms and browsers. I care deeply about building interfaces that are usable and pleasant for the most number of people possible.And my main motto is whenever building any application is to always build pixel perfect high performant applications that provide user with a rich experience.";
  static const String intro =
      "I started my career into developement as android developer.First I built android applications in native android.Later I heared about flutter which helps in building cross platform applications.After gaining experience in flutter,I applied to internships,through which I was able to learn communication skills and code architectures.After that I worked as a freelancer and gained experience of how to build applications in production level.Presently I'm focusing on web developement.I learnt MERN Stack.And working projects on it.";
}
