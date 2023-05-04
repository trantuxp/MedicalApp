import {
  Text,
  StyleSheet,
  View,
  TextInput,
  TouchableOpacity,
} from 'react-native';
import React, {Component, useState, useEffect} from 'react';
import {colors, fontsize, images, CallURL} from '../constant';
import {KeyboardAwareScrollView} from 'react-native-keyboard-aware-scroll-view';
import {useNavigation, useRoute} from '@react-navigation/native';
import axios from 'axios';
import TabBottomUser from './TabBottomUser';
import AsyncStorage from '@react-native-async-storage/async-storage';
import SelectDropdown from 'react-native-select-dropdown';
export default function Book(props) {
  const navigation = useNavigation();
  const [idkhoa, setidkhoa] = useState();
  const [idbacsi, setidbacsi] = useState();
  const [idbenhnhan, setidbenhnhan] = useState();
  const [day, setday] = useState();
  const [month, setmonth] = useState();
  const [time, settime] = useState();
  const [symptoms, setsymptoms] = useState();

  const Khoa = [
    'ĐỒ CHƠI LẮP RÁP',
    'ĐỒ CHƠI NẤU ĂN',
    'ĐỒ CHƠI GIÁO DỤC',
    'BÚP BÊ',
  ];

  const Bacsi = [
    'ĐỒ CHƠI LẮP RÁP',
    'ĐỒ CHƠI NẤU ĂN',
    'ĐỒ CHƠI GIÁO DỤC',
    'BÚP BÊ',
  ];

  const Ngay = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];

  const Thang = ['5', '6'];
  const Gio = ['7:30-9:30', '9:30-11:30', '13:00-15:30', '15:30-17:00'];

  useEffect(() => {
    AsyncStorage.getItem('id').then(result => {
      setidbenhnhan(result);
    });
  }, [AsyncStorage.getItem('id')]);

  const AddBook = (
    tenlich,
    idbenhnhan,
    idbacsi,
    trieuchung,
    idkhoa,
    ngaykham,
    giokham,
  ) => {
    axios
      // them hang hoa
      .get(CallURL.URL_themlichkham, {
        params: {
          tenlich: tenlich,
          idbenhnhan: idbenhnhan,
          idbacsi: idbacsi,
          trieuchung: trieuchung,
          idkhoa: idkhoa,
          ngaykham: ngaykham,
          giokham: giokham,
        },
      })
      .catch(function (error) {
        // handle error
        console.log(error);
      })
      .finally(function () {
        // always executed
      });
  };
  return (
    <View
      style={{
        flex: 1,
        backgroundColor: '#CCCCCC',
      }}>
      <View
        style={{
          backgroundColor: colors.white,
          margin: 20,
          top: 30,
          flex: 85,
          justifyContent: 'center',
        }}>
        <Text
          style={{
            top: 10,
            fontSize: fontsize.h3,
            color: colors.black,
            alignSelf: 'center',
          }}>
          THÔNG TIN LỊCH KHÁM
        </Text>
        <KeyboardAwareScrollView>
          <View
            style={{
              flex: 20,
              flexDirection: 'row',
              marginTop: 40,
              marginBottom: 20,
              marginHorizontal: 20,
              alignItems: 'center',
            }}>
            <View style={{flex: 40}}>
              <Text
                style={{
                  fontSize: fontsize.h4,
                  color: colors.primary,
                }}>
                Chuyên khoa:
              </Text>
            </View>
            <View style={{height: 40, zIndex: 1}}>
              <SelectDropdown
                buttonStyle={{
                  borderWidth: 1,
                  height: 40,
                  borderRadius: 10,
                  alignSelf: 'center',
                }}
                defaultButtonText={' '}
                data={Khoa}
                onSelect={(selectedItem, index) => {
                  setidkhoa(index);
                }}
                buttonTextAfterSelection={(selectedItem, index) => {
                  // text represented after item is selected
                  // if data array is an array of objects then return selectedItem.property to render after item is selected
                  return selectedItem;
                }}
                rowTextForSelection={(item, index) => {
                  // text represented for each item in dropdown
                  // if data array is an array of objects then return item.property to represent item in dropdown
                  return item;
                }}
              />
            </View>

            <View
              style={{
                height: 1,
                backgroundColor: colors.primary,
              }}
            />
          </View>
          <View
            style={{
              flex: 20,
              flexDirection: 'row',
              marginVertical: 20,
              marginHorizontal: 20,
              alignItems: 'center',
            }}>
            <View style={{flex: 40}}>
              <Text
                style={{
                  fontSize: fontsize.h4,
                  color: colors.primary,
                }}>
                Bác sĩ:
              </Text>
            </View>
            <View style={{height: 40, zIndex: 1}}>
              <SelectDropdown
                buttonStyle={{
                  borderWidth: 1,
                  height: 40,
                  borderRadius: 10,
                  alignSelf: 'center',
                }}
                defaultButtonText={' '}
                data={Bacsi}
                onSelect={(selectedItem, index) => {
                  setidkhoa(index);
                }}
                buttonTextAfterSelection={(selectedItem, index) => {
                  // text represented after item is selected
                  // if data array is an array of objects then return selectedItem.property to render after item is selected
                  return selectedItem;
                }}
                rowTextForSelection={(item, index) => {
                  // text represented for each item in dropdown
                  // if data array is an array of objects then return item.property to represent item in dropdown
                  return item;
                }}
              />
            </View>

            <View
              style={{
                height: 1,
                backgroundColor: colors.primary,
              }}
            />
          </View>
          <View
            style={{
              flex: 20,
              flexDirection: 'row',
              marginVertical: 20,
              marginHorizontal: 20,
              alignItems: 'center',
            }}>
            <View
              style={{
                flex: 30,
                alignItems: 'center',
              }}>
              <Text
                style={{
                  fontSize: fontsize.h4,
                  color: colors.primary,
                  marginBottom: 10,
                }}>
                Ngày:
              </Text>
              <View style={{flex: 30, height: 40, zIndex: 1}}>
                <SelectDropdown
                  buttonStyle={{
                    width: 80,
                    borderWidth: 1,
                    height: 40,
                    borderRadius: 10,
                    alignSelf: 'center',
                  }}
                  defaultButtonText={' '}
                  data={Ngay}
                  onSelect={(selectedItem, index) => {
                    setidkhoa(index);
                  }}
                  buttonTextAfterSelection={(selectedItem, index) => {
                    // text represented after item is selected
                    // if data array is an array of objects then return selectedItem.property to render after item is selected
                    return selectedItem;
                  }}
                  rowTextForSelection={(item, index) => {
                    // text represented for each item in dropdown
                    // if data array is an array of objects then return item.property to represent item in dropdown
                    return item;
                  }}
                />
              </View>
            </View>
            <View
              style={{
                flex: 30,
                alignItems: 'center',
              }}>
              <Text
                style={{
                  fontSize: fontsize.h4,
                  color: colors.primary,
                  marginBottom: 10,
                }}>
                Tháng:
              </Text>
              <View style={{flex: 30, height: 40, zIndex: 1}}>
                <SelectDropdown
                  buttonStyle={{
                    width: 80,
                    borderWidth: 1,
                    height: 40,
                    borderRadius: 10,
                    alignSelf: 'center',
                  }}
                  defaultButtonText={' '}
                  data={Thang}
                  onSelect={(selectedItem, index) => {
                    setidkhoa(index);
                  }}
                  buttonTextAfterSelection={(selectedItem, index) => {
                    // text represented after item is selected
                    // if data array is an array of objects then return selectedItem.property to render after item is selected
                    return selectedItem;
                  }}
                  rowTextForSelection={(item, index) => {
                    // text represented for each item in dropdown
                    // if data array is an array of objects then return item.property to represent item in dropdown
                    return item;
                  }}
                />
              </View>
            </View>
            <View
              style={{
                flex: 40,
                alignItems: 'center',
              }}>
              <Text
                style={{
                  fontSize: fontsize.h4,
                  color: colors.primary,
                  marginBottom: 10,
                }}>
                Khung giờ:
              </Text>
              <View style={{flex: 30, height: 40, zIndex: 1}}>
                <SelectDropdown
                  buttonStyle={{
                    width: 120,
                    borderWidth: 1,
                    height: 40,
                    borderRadius: 10,
                    alignSelf: 'center',
                  }}
                  defaultButtonText={' '}
                  data={Gio}
                  onSelect={(selectedItem, index) => {
                    setidkhoa(index);
                  }}
                  buttonTextAfterSelection={(selectedItem, index) => {
                    // text represented after item is selected
                    // if data array is an array of objects then return selectedItem.property to render after item is selected
                    return selectedItem;
                  }}
                  rowTextForSelection={(item, index) => {
                    // text represented for each item in dropdown
                    // if data array is an array of objects then return item.property to represent item in dropdown
                    return item;
                  }}
                />
              </View>
            </View>
          </View>

          <View
            style={{
              marginVertical: 10,
              marginHorizontal: 20,
              justifyContent: 'center',
            }}>
            <Text
              style={{
                fontSize: fontsize.h4,
                color: colors.primary,
              }}>
              Triệu chứng gặp phải:
            </Text>
            <TextInput
              onChangeText={text => {
                // set errormail with enough condition yet?

                setmonth(text);
              }}
              placeholder="Mô tả triệu chứng gặp phải"
              placeholderTextColor={colors.placeholder}
            />
            <View
              style={{
                height: 1,
                backgroundColor: colors.primary,
              }}
            />
          </View>
        </KeyboardAwareScrollView>
      </View>
      <View
        style={{
          flex: 15,
          marginHorizontal: 20,
          padding: 20,
          justifyContent: 'center',
          alignItems: 'center',
        }}>
        <TouchableOpacity
          onPress={() => {
            AddBook(
              iduser,
              tenuser,
              diachi,
              sodt,
              email,
              result_soluongsp,
              result,
            );

            navigation.navigate('Homescreen');
          }}
          title="LOGIN"
          style={{
            width: '50%',
            alignSelf: 'center',
            alignItems: 'center',
            justifyContent: 'center',
            backgroundColor: colors.primary,
            borderRadius: 40,
            borderColor: colors.primary,
            borderWidth: 1,
            height: 40,
            borderRadius: 40,
            padding: 10,
          }}>
          <Text
            style={{
              color: 'white',
              fontSize: fontsize.h4,
            }}>
            XÁC NHẬN
          </Text>
        </TouchableOpacity>
        <TouchableOpacity
          onPress={() => {
            navigation.navigate('Homescreen');
          }}>
          <Text
            style={{
              padding: 10,
              color: colors.primary,
              fontSize: fontsize.h4,
              alignSelf: 'center',
            }}>
            Trở về Trang chủ
          </Text>
        </TouchableOpacity>
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

const styles = StyleSheet.create({});
