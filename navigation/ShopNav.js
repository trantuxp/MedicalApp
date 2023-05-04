import * as React from 'react';
import {View, Text, Button} from 'react-native';
import {NavigationContainer, useNavigation} from '@react-navigation/native';
import {createDrawerNavigator} from '@react-navigation/drawer';
import {createStackNavigator} from '@react-navigation/stack';
import {colors} from '../constant';
import ChatbotScreen from '../compoments/ChatbotScreen';

import {
  Signin,
  Register,
  Homescreen,
  DetailProduct,
  Cart,
  DrawerContent,
  Product2Item,
  Payment,
  About,
  ProductList,
  News,
  NewsList,
  DetailNews,
  UserInfo,
  Search,
  MyCancelOrder,
  MyDelivered,
  MyDelivering,
  MyOrder,
  Disease,
  DiseaseList,
  DetailDisease,
  Doctor,
  DoctorList,
  DetailDoctor,
  Service,
  ServiceList,
  DetailService,
  Book,
} from '../screens';
import {
  Getapi_Flatlist,
  ManagerAccount,
  AdminScreen,
  ManagerNews,
  ManagerShop,
  ManagerOrder,
  AddProduct,
  RepairProduct,
  Delivered,
  Delivering,
  CancelOrder,
} from '../admin';
const Drawer = createDrawerNavigator();

const MystackSignin = () => {
  return (
    <Stack.Navigator screenOptions={{headerShown: false}}>
      <Stack.Screen name="Signin" component={Signin} />
      <Stack.Screen name="Homescreen" component={Homescreen} />
      <Stack.Screen name="Product2Item" component={Product2Item} />
      <Stack.Screen name="Payment" component={Payment} />
      <Stack.Screen name="About" component={About} />
      <Stack.Screen name="ProductList" component={ProductList} />
      <Stack.Screen name="News" component={News} />
      <Stack.Screen name="Cart" component={Cart} />
      <Stack.Screen name="NewsList" component={NewsList} />
      <Stack.Screen name="DetailNews" component={DetailNews} />
      <Stack.Screen name="UserInfo" component={UserInfo} />
      <Stack.Screen name="Search" component={Search} />
      <Stack.Screen name="MyCancelOrder" component={MyCancelOrder} />
      <Stack.Screen name="MyDelivered" component={MyDelivered} />
      <Stack.Screen name="MyDelivering" component={MyDelivering} />
      <Stack.Screen name="MyOrder" component={MyOrder} />
      <Stack.Screen name="ChatbotScreen" component={ChatbotChatbotScreen} />
      <Stack.Screen name="Disease" component={Disease} />
      <Stack.Screen name="DiseaseList" component={DiseaseList} />
      <Stack.Screen name="DetailDisease" component={DetailDisease} />
      <Stack.Screen name="Doctor" component={Doctor} />
      <Stack.Screen name="DoctorList" component={DoctorList} />
      <Stack.Screen name="DetailDoctor" component={DetailDoctor} />
      <Stack.Screen name="Service" component={Service} />
      <Stack.Screen name="ServiceList" component={ServiceList} />
      <Stack.Screen name="DetailService" component={DetailService} />
      <Stack.Screen name="Book" component={Book} />
    </Stack.Navigator>
  );
};

const MystackRegister = () => {
  return (
    <Stack.Navigator screenOptions={{headerShown: false}}>
      <Stack.Screen name="Register" component={Register} />
      <Stack.Screen name="DetailProduct" component={DetailProduct} />
      <Stack.Screen name="Homescreen" component={Homescreen} />
      <Stack.Screen name="Product2Item" component={Product2Item} />
      <Stack.Screen name="About" component={About} />
      <Stack.Screen name="ProductList" component={ProductList} />
      <Stack.Screen name="News" component={News} />
      <Stack.Screen name="Cart" component={Cart} />
      <Stack.Screen name="NewsList" component={NewsList} />
      <Stack.Screen name="DetailNews" component={DetailNews} />
      <Stack.Screen name="UserInfo" component={UserInfo} />
      <Stack.Screen name="Search" component={Search} />
      <Stack.Screen name="MyCancelOrder" component={MyCancelOrder} />
      <Stack.Screen name="MyDelivered" component={MyDelivered} />
      <Stack.Screen name="MyDelivering" component={MyDelivering} />
      <Stack.Screen name="MyOrder" component={MyOrder} />
      <Stack.Screen name="ChatbotScreen" component={ChatbotScreen} />
      <Stack.Screen name="Disease" component={Disease} />
      <Stack.Screen name="DiseaseList" component={DiseaseList} />
      <Stack.Screen name="DetailDisease" component={DetailDisease} />
      <Stack.Screen name="Doctor" component={Doctor} />
      <Stack.Screen name="DoctorList" component={DoctorList} />
      <Stack.Screen name="DetailDoctor" component={DetailDoctor} />
      <Stack.Screen name="Service" component={Service} />
      <Stack.Screen name="ServiceList" component={ServiceList} />
      <Stack.Screen name="DetailService" component={DetailService} />
      <Stack.Screen name="Book" component={Book} />
    </Stack.Navigator>
  );
};

const MystackAdmin = () => {
  return (
    <Stack.Navigator
      headerStyle
      screenOptions={{
        headerShown: true,
        headerStyle: {
          backgroundColor: colors.primary,
        },
      }}>
      <Stack.Screen name="Admin" component={AdminScreen} />
      <Stack.Screen name="ManagerProduct" component={Getapi_Flatlist} />
      <Stack.Screen name="ManagerAccount" component={ManagerAccount} />
      <Stack.Screen name="ManagerOrder" component={ManagerOrder} />
      <Stack.Screen name="ManagerShop" component={ManagerShop} />
      <Stack.Screen name="AddProduct" component={AddProduct} />
      <Stack.Screen name="RepairProduct" component={RepairProduct} />
      <Stack.Screen name="Delivered" component={Delivered} />
      <Stack.Screen name="Delivering" component={Delivering} />
      <Stack.Screen name="CancelOrder" component={CancelOrder} />
    </Stack.Navigator>
  );
};

const Stack = createStackNavigator();

export default function MainNavigator() {
  return (
    <NavigationContainer>
      <Drawer.Navigator
        initialRouterName="Homescreen"
        screenOptions={{headerShown: false}}
        drawerContent={props => <DrawerContent {...props} />}>
        <Drawer.Screen name="Homescreen" component={Homescreen} />
        <Drawer.Screen name="DetailProduct" component={DetailProduct} />
        <Drawer.Screen name="Cart" component={Cart} />
        <Drawer.Screen name="Signin" component={Signin} />
        {/* <Drawer.Screen name="Signin" component={Signin} />
        <Drawer.Screen name="Register" component={Register} /> */}
        <Drawer.Screen name="MystackSignin" component={MystackSignin} />
        <Drawer.Screen name="MystackRegister" component={MystackRegister} />
        <Drawer.Screen name="MystackAdmin" component={MystackAdmin} />
        <Drawer.Screen name="Product2Item" component={Product2Item} />
        <Drawer.Screen name="Payment" component={Payment} />
        <Drawer.Screen name="About" component={About} />
        <Drawer.Screen name="ProductList" component={ProductList} />
        <Drawer.Screen name="News" component={News} />
        <Drawer.Screen name="NewsList" component={NewsList} />
        <Drawer.Screen name="DetailNews" component={DetailNews} />
        <Drawer.Screen name="UserInfo" component={UserInfo} />
        <Drawer.Screen name="Search" component={Search} />
        <Drawer.Screen name="MyCancelOrder" component={MyCancelOrder} />
        <Drawer.Screen name="MyDelivered" component={MyDelivered} />
        <Drawer.Screen name="MyDelivering" component={MyDelivering} />
        <Drawer.Screen name="MyOrder" component={MyOrder} />
        <Drawer.Screen name="ChatbotScreen" component={ChatbotScreen} />
        <Drawer.Screen name="Disease" component={Disease} />
        <Drawer.Screen name="DiseaseList" component={DiseaseList} />
        <Drawer.Screen name="DetailDisease" component={DetailDisease} />
        <Drawer.Screen name="Doctor" component={Doctor} />
        <Drawer.Screen name="DoctorList" component={DoctorList} />
        <Drawer.Screen name="DetailDoctor" component={DetailDoctor} />
        <Drawer.Screen name="Service" component={Service} />
        <Drawer.Screen name="ServiceList" component={ServiceList} />
        <Drawer.Screen name="DetailService" component={DetailService} />
        <Drawer.Screen name="Book" component={Book} />
      </Drawer.Navigator>
    </NavigationContainer>
  );
}
