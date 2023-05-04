import React, {useState, useEffect} from 'react';
import {
  StyleSheet,
  Text,
  View,
  Image,
  ImageBackground,
  TouchableOpacity,
  TextInput,
  KeyboardAvoidingView,
  Keyboard,
  ScrollView,
  FlatList,
  Button,
} from 'react-native';

import {images, icons, fontsize, colors, CallURL} from '../../constant';
import Icons from 'react-native-vector-icons/FontAwesome5';
import axios from 'axios';
import Taskbar from '../Taskbar';
import DoctorList from './DoctorList';
import TabBottomUser from '../TabBottomUser';
function Doctor(props) {
  const [data, setdata] = useState([]);

  useEffect(() => {
    calGetUrl();
  }, [data]);

  const calGetUrl = async () => {
    axios
      .get(CallURL.URL_getbacsi)
      .then(res => {
        // console.log(typeof res.data.data);
        setdata(res.data.data);

        // console.log(JSON.stringify(res.data.data));
      })
      .catch(function (error) {
        // handle error
        console.log(error);
      })
      .finally(function () {
        // always executed
      });
  };
  const {navigation} = props;

  return (
    <View
      style={{
        flex: 1,
        backgroundColor: 'white',
      }}>
      <View
        style={{
          flex: 10,
        }}>
        <Taskbar navigation={navigation} title="Chuyên gia" />
      </View>

      <View
        style={{
          top: 20,
          flex: 80,
        }}>
        <View style={{flex: 80}}>
          <FlatList
            data={data}
            key={data.id}
            renderItem={({item}) => (
              <DoctorList navigation={navigation} products={item} />
            )}
          />
        </View>
      </View>
      <View
        style={{
          flex: 10,
        }}>
        <TabBottomUser></TabBottomUser>
      </View>
    </View>
  );
}
export default Doctor;
