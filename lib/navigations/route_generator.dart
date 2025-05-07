// ignore_for_file: unreachable_switch_case

import 'package:agora/Admin%20List/AdminsView.dart';
import 'package:agora/BottomNavigation.dart';
import 'package:agora/Confirmation.dart';
import 'package:agora/DeActivate.dart';
import 'package:agora/FeedBack.dart';
import 'package:agora/Follow.dart';
import 'package:agora/Forgot.dart';
import 'package:agora/GroupView.dart';
import 'package:agora/Help.dart';
import 'package:agora/JoinedGroup.dart';
import 'package:agora/Languages.dart';
import 'package:agora/MySaved.dart';
import 'package:agora/Notifications.dart';
import 'package:agora/PaymentMethods.dart';
import 'package:agora/PrivacyPolicy.dart';
import 'package:agora/ProfileNotifications.dart';
import 'package:agora/ProfileSetting.dart';
import 'package:agora/Purpose.dart';
import 'package:agora/Reset%20password.dart';
import 'package:agora/TermsConditions.dart';
import 'package:agora/UserDetails.dart';
import 'package:agora/Verification.dart';
import 'package:agora/Views/Edit%20Profile/Add%20Group/About_AddGrp.dart';
import 'package:agora/Views/Edit%20Profile/Add%20Group/GroupName.dart';
import 'package:agora/Views/Edit%20Profile/Add%20Group/Location.dart';
import 'package:agora/Views/Edit%20Profile/Add%20Group/Privacy_AddGrp.dart';
import 'package:agora/Views/Edit%20Profile/Add%20Group/Topics.dart';
import 'package:agora/Views/Edit%20Profile/Analytics.dart';
import 'package:agora/Views/Edit%20Profile/CompaignDetails.dart';
import 'package:agora/Views/Edit%20Profile/EditProfile.dart';
import 'package:agora/Views/HomeScreens/Create%20Events/EventLocation.dart';
import 'package:agora/Views/HomeScreens/Create%20Events/Livee.dart';
import 'package:agora/Views/HomeScreens/Create%20Events/Sponsor%20Event/SponsorCard.dart';
import 'package:agora/Views/HomeScreens/Create%20Events/Sponsor%20Event/SponsorEvent.dart';
import 'package:agora/Views/HomeScreens/Create%20Events/Sponsor%20Event/SponsorPayment.dart';
import 'package:agora/Views/HomeScreens/CreatePoll/CreatePoll.dart';
import 'package:agora/Views/HomeScreens/CreatePoll/CreatePoll1.dart';
import 'package:agora/Views/HomeScreens/CreatePoll/PollLocation.dart';
import 'package:agora/Views/HomeScreens/CreatePost/AddNewCard.dart';
import 'package:agora/Views/HomeScreens/CreatePost/CreatePooost.dart';
import 'package:agora/Views/HomeScreens/CreatePost/CreatePost.dart';
import 'package:agora/Views/HomeScreens/CreatePost/CreatePostLocation.dart';
import 'package:agora/Views/HomeScreens/CreatePost/Paymentss.dart';
import 'package:agora/Views/HomeScreens/CreatePost/SponsorPost.dart';
import 'package:agora/Views/HomeScreens/HomePage.dart';
import 'package:agora/Views/Privacy%20Settings/BlockedUsers.dart';
import 'package:agora/Views/Privacy%20Settings/Greetss.dart';
import 'package:agora/Views/Privacy%20Settings/Groupss.dart';
import 'package:agora/Views/Privacy%20Settings/OnlineStatus.dart';
import 'package:agora/Views/Privacy%20Settings/Posts.dart';
import 'package:agora/Views/Privacy%20Settings/PrivacySettings.dart';
import 'package:agora/Views/Privacy%20Settings/ProfileLocking.dart';
import 'package:agora/Views/Privacy%20Settings/eventss.dart';
import 'package:agora/login.dart';
import 'package:agora/main.dart';
import 'package:agora/register.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) => switch (settings.name) {
        // routing from onboarding screeen to the reset password, confirmation screen
        Home.routeName => route(const login()),
        Forgot.routeName => route(const Forgot()),
        Verification.routeName => route(const Verification()),
        ResetPassword.routeName => route(const ResetPassword()),
        Confirmation.routeName => route(const Confirmation()),
        login.routeName => route(const login()),

        /// routing for register screen to the homepage
        register.routeName => route(const register()),
        Purpose.routeName => route(const Purpose()),
        Follow.routeName => route(const Follow()),
        BottomNavigation.routeName => route(const BottomNavigation()),

        /// routing for the Home screen, for creating post, polls and events
        HomePage.routeName => route(const CreatePost()),
        CreatePost.routeName => route(const CreatePost()),
        CreatePostLocation.routeName => route(const CreatePostLocation()),
        CreatePooost.routeName => route(const CreatePooost()),
        SponsorPost.routeName => route(const SponsorPost()),
        Paymentss.routeName => route(const Paymentss()),

        /// routing for the payment screen
        Paymentss.routeName => route(const Paymentss()),
        AddNewCard.routeName => route(const AddNewCard()),
        AddNewCard.routeName => route(const BottomNavigation()),

        /// Routing for Polls
        CreatePoll.routeName => route(const CreatePoll()),
        PollLocation.routeName => route(const PollLocation()),
        CreatePoll1.routeName => route(const CreatePoll1()),
        CreatePoll1.routeName => route(const BottomNavigation()),

        ///Routing for Events
        EventLocation.routeName => route(const EventLocation()),
        Livee.routeName => route(const Livee()),
        SponsorEvent.routeName => route(const SponsorEvent()),
        SponsorPayment.routeName => route(const SponsorPayment()),
        SponsorCard.routeName => route(const SponsorCard()),
        SponsorCard.routeName => route(const BottomNavigation()),
        Notifications.routeName => route(const Notifications()),

        /// Routing for Discover Page // My Groups
        GroupView.routeName => route(const GroupView()),
        JoinedGroup.routeName => route(const JoinedGroup()),
        AdminView.routeName => route(const AdminView()),

        ///Routing fot profile screen or user details
        UserDetails.routeName => route(const Location()),
        Topics.routeName => route(const Topics()),
        About_AddGrp.routeName => route(const About_AddGrp()),
        GroupName.routeName => route(const GroupName()),
        Privacy_AddGrp.routeName => route(const Privacy_AddGrp()),

        /// Routing the main profile and settings
        ProfileSetting.routeName => route(const ProfileSetting()),
        EditProfile.routeName => route(const EditProfile()),
        ProfileNotifications.routeName => route(const ProfileNotifications()),
        MySaved.routeName => route(const MySaved()),
        Languages.routeName => route(const Languages()),
        PrivacySettings.routeName => route(const PrivacySettings()),
        PaymentMethods.routeName => route(const PaymentMethods()),
        TermsConditions.routeName => route(const TermsConditions()),
        PrivacyPolicy.routeName => route(const PrivacyPolicy()),
        FeedBack.routeName => route(const FeedBack()),
        Help.routeName => route(const Help()),
        DeActivate.routeName => route(const DeActivate()),
        DeActivate.routeName => route(const login()),
       Analytics.routeName => route(const Analytics()),
       CompaignDetails.routeName => route(const CompaignDetails()),

        /// pages inside the privacy settings
        ProfileLocking.routeName => route(const ProfileLocking()),
        Greetss.routeName => route(const Greetss()),
        Onlinestatus.routeName => route(const Onlinestatus()),
        Groupss.routeName => route(const Groupss()),
        eventss.routeName => route(const eventss()),
        Posts.routeName => route(const Posts()),
        BlockedUsers.routeName => route(const BlockedUsers()),


        _ => route(const ErrorRoute()),
      };
}

Route route(Widget screen) => MaterialPageRoute(builder: (context) => screen);

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({super.key});
  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: Text('You should not be here...')));
}
