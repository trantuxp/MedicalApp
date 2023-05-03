import {Text, StyleSheet, View, TouchableOpacity, Image} from 'react-native';
import React, {Component} from 'react';
import {colors, images, fontsize} from '../constant';
import {useNavigation} from '@react-navigation/native';

export default function TabBottomUser(props) {
  const navigation = useNavigation();
  return (
    <View
      style={{
        flex: 1,
        borderTopColor: '#001',
        borderTopWidth: 2,

        // shadowColor: '#000',
        // shadowOffset: {
        //   width: 2,
        //   height: 4,
        // },
        // shadowOpacity: 0.4,
        // shadowRadius: 2.65,
      }}>
      <View
        style={{
          flex: 1,
          flexDirection: 'row',
          backgroundColor: colors.white,
        }}>
        <View
          style={{
            flex: 25,
            alignItems: 'center',
            justifyContent: 'center',
          }}>
          <TouchableOpacity
            onPress={() => {
              navigation.navigate('Homescreen');
            }}>
            <Image
              source={images.home}
              style={{width: 30, height: 30, alignSelf: 'center'}}
            />
            <View>
              <Text style={{color: colors.inactive}}>Home</Text>
            </View>
          </TouchableOpacity>
        </View>

        <View
          style={{
            flex: 25,
            alignItems: 'center',
            justifyContent: 'center',
          }}>
          <TouchableOpacity
            onPress={() => {
              navigation.navigate('Cart');
            }}>
            <Image
              source={images.carticon}
              style={{
                width: 65,
                height: 65,
                alignSelf: 'center',
                borderWidth: 1,
                borderRadius: 50,
              }}
            />
          </TouchableOpacity>
        </View>
        <View
          style={{
            flex: 25,
            alignItems: 'center',
            justifyContent: 'center',
          }}>
          <TouchableOpacity
            onPress={() => {
              navigation.navigate('Cart');
            }}>
            <Image
              source={images.schedule}
              style={{
                width: 65,
                height: 65,
                alignSelf: 'center',
                borderWidth: 1,
                borderRadius: 50,
              }}
            />
          </TouchableOpacity>
        </View>

        <View
          style={{flex: 25, alignItems: 'center', justifyContent: 'center'}}>
          <TouchableOpacity
            onPress={() => {
              navigation.navigate('ChatbotScreen');
            }}>
            <Image
              source={images.mess}
              style={{width: 35, height: 35, alignSelf: 'center'}}
            />
            <View>
              <Text style={{color: colors.inactive}}>Chatbot</Text>
            </View>
          </TouchableOpacity>
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({});
