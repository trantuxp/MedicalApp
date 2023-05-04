import React, {useState, useEffect} from 'react';
import {
  Text,
  View,
  Image,
  ImageBackground,
  TouchableOpacity,
  TextInput,
  KeyboardAvoidingView,
  Keyboard,
} from 'react-native';
import {images, colors, icons, fontsize} from '../../constant';
import Icon from 'react-native-vector-icons/FontAwesome5';
import TabBottomUser from '../TabBottomUser';
function DoctorList(props) {
  const {id, tenbacsi, anh, chucvu, mota, idkhoa} = props.products; //destructuring an object
  const navigation = props.navigation;
  return (
    <TouchableOpacity
      onPress={() => {
        navigation.navigate('DetailDoctor', {
          id: id,
          tenbacsi: tenbacsi,
          anh: anh,
          chucvu: chucvu,
          mota: mota,
          idkhoa: idkhoa,
        });
      }}
      style={{
        height: 150,
        paddingStart: 10,
        flexDirection: 'row',
      }}>
      <Image
        style={{
          width: 100,
          height: 100,
          resizeMode: 'cover',
          borderRadius: 10,
          marginRight: 15,
        }}
        source={{
          uri: anh,
        }}
      />
      <View
        style={{
          flex: 1,
          marginRight: 10,
        }}>
        <Text
          style={{
            color: 'black',
            fontSize: fontsize.h4,
            fontWeight: 'bold',
          }}>
          {tenbacsi}
        </Text>
        <View
          style={{
            height: 1,
            backgroundColor: 'black',
          }}
        />

        <Text
          style={{
            color: colors.inactive,
            fontSize: fontsize.h4,
            height: 95,
          }}>
          Detail: {mota}
        </Text>
      </View>
    </TouchableOpacity>
  );
}
export default DoctorList;
