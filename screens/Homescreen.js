import {Text, StyleSheet, View, FlatList, TextInput, Image} from 'react-native';
import React, {Component, useState, useEffect} from 'react';
import {TouchableOpacity} from 'react-native-gesture-handler';
import AsyncStorage from '@react-native-async-storage/async-storage';
import {useNavigation} from '@react-navigation/native';
import Slide from '../compoments/Slide';
import Icons from 'react-native-vector-icons/FontAwesome5';
import {SafeAreaView} from 'react-native-safe-area-context';
import {colors, fontsize, CallURL, images} from '../constant';
import Taskbar from './Taskbar';
import axios from 'axios';
import Product2Item from './ProductLists/Product2Item';

import TabBottomUser from './TabBottomUser';
export default function Homescreen(props) {
  const [data, setdata] = useState([]);

  useEffect(() => {
    calGetUrl();
  }, [data]);

  const calGetUrl = async () => {
    axios
      .get(CallURL.URL_spmoinhat)

      .then(res => {
        setdata(res.data.data);
      })
      .catch(function (error) {
        console.log(error);
      })
      .finally(function () {
        // always executed
      });
  };

  const navigation = useNavigation();
  const [username, setusername] = useState('');
  const [password, setpassword] = useState([]);
  const [noidungtim, setnoidungtim] = useState();
  useEffect(() => {
    AsyncStorage.getItem('username').then(result => {
      setusername('');
    });
    AsyncStorage.getItem('password').then(result => {
      setpassword('');
    });
  }, []);
  return (
    <SafeAreaView style={{flex: 1}}>
      <View
        style={{
          flex: 10,
        }}>
        <Taskbar navigation={navigation} title="Home" user="anhtu" />
      </View>
      <View
        style={{
          flex: 30,
          backgroundColor: '#fff',
        }}>
        <Slide></Slide>
      </View>
      {/* <View
        style={{
          flex: 10,
          flexDirection: 'row',
          top: 5,
          marginHorizontal: 10,
        }}>
        <TextInput
          onChangeText={Text => {
            setnoidungtim(Text);
          }}
          placeholder="Search by name"
          placeholderTextColor={colors.placeholder}
          style={{
            backgroundColor: 'white',
            height: 40,
            flex: 1,
            borderRadius: 10,
            borderWidth: 1,
            borderColor: 'gray',

            alignItems: 'center',
            justifyContent: 'center',
          }}
        />
        <TouchableOpacity
          style={{
            left: 5,
            backgroundColor: colors.white,
            borderWidth: 1,
            borderColor: 'gray',
            borderRadius: 10,
          }}
          onPress={() => {
            navigation.navigate('Search', {
              noidungtim: noidungtim,
            });
          }}>
          <Icons name="search" size={37} color="gray" />
        </TouchableOpacity>
      </View> */}
      <View style={{flex: 10, backgroundColor: '#fff'}}>
        <View style={{flex: 1, flexDirection: 'row'}}>
          <View
            style={{
              flex: 70,
              marginBottom: 25,
              alignItems: 'center',
              justifyContent: 'center',
            }}>
            <Text
              style={{
                fontWeight: 'bold',
                fontSize: fontsize.h3,
                color: colors.alert,
              }}>
              ĐẶT LỊCH KHÁM TRỰC TUYẾN
            </Text>
            <Text
              style={{
                fontStyle: 'italic',
                fontSize: fontsize.h5,
                color: colors.primary,
              }}>
              Nhanh chóng - Hiệu quả - Kịp thời
            </Text>
          </View>
          <View
            style={{
              flex: 30,
              marginBottom: 25,
              alignItems: 'center',
              justifyContent: 'center',
            }}>
            <Image source={images.schedule} style={{width: 80, height: 80}} />
          </View>
        </View>
      </View>
      <View style={{flex: 40}}>
        <View
          style={{
            flex: 10,
            backgroundColor: colors.primary,

            justifyContent: 'center',
          }}>
          <Text style={{fontSize: fontsize.h3, color: 'white'}}>
            Sản phẩm mới nhất
          </Text>
        </View>
        <View style={{flex: 80}}>
          <View
            style={{
              paddingTop: 10,
              flex: 1,
              backgroundColor: colors.white,
            }}>
            <FlatList
              numColumns={2}
              data={data}
              key={data.id}
              renderItem={({item}) => (
                <Product2Item navigation={navigation} data={item} />
              )}
            />
          </View>
        </View>
      </View>
      <View
        style={{
          flex: 10,
        }}>
        <TabBottomUser></TabBottomUser>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({});
