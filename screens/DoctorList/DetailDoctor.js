import {
  Text,
  StyleSheet,
  View,
  Button,
  TextInput,
  NumberInput,
  Image,
  TouchableOpacity,
  KeyboardAvoidingView,
} from 'react-native';
import React, {Component, useState, useEffect} from 'react';
import {SafeAreaView} from 'react-native-safe-area-context';
import {colors, fontsize, CallURL} from '../../constant';
import {KeyboardAwareScrollView} from 'react-native-keyboard-aware-scroll-view';
import {useNavigation, useRoute} from '@react-navigation/native';
import Taskbar from '../Taskbar';
import TabBottomUser from '../TabBottomUser';
export default function DetailDoctor(props) {
  const [valueNumeric, setvalueNumeric] = useState(1);
  const navigation = useNavigation();
  const route = useRoute();
  const id = route.params?.id;
  const tenbacsi = route.params?.tenbacsi;
  const anh = route.params?.anh;
  const chucvu = route.params?.chucvu;
  const mota = route.params?.mota;
  const idkhoa = route.params?.idkhoa;

  return (
    <SafeAreaView style={{flex: 1, backgroundColor: 'white'}}>
      <View
        style={{
          flex: 10,
        }}>
        <Taskbar navigation={navigation} title="DetailDoctor" />
      </View>
      <View style={{flex: 40}}>
        <View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
          <Image
            style={{
              width: 200,
              height: 200,
              resizeMode: 'cover',
              borderRadius: 10,
            }}
            source={{
              uri: anh,
            }}
          />
          <Text
            style={{
              marginVertical: 10,
              fontSize: fontsize.h5,
              fontWeight: 'bold',
            }}>
            {tenbacsi}
          </Text>
          <Text
            style={{
              marginVertical: 10,
              fontSize: fontsize.h5,
              fontWeight: 'bold',
            }}>
            {chucvu}
          </Text>
        </View>
      </View>
      <View style={{flex: 40, padding: 10}}>
        <KeyboardAwareScrollView>
          <View
            style={{
              flex: 1,
            }}>
            <View style={{height: 1, backgroundColor: 'black'}} />
            <View style={{flex: 1, padding: 20}}>
              <Text style={{fontSize: 18, fontWeight: 'bold'}}>
                Mô tả chi tiết
              </Text>
              <Text>{mota}</Text>
            </View>
          </View>
        </KeyboardAwareScrollView>
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
