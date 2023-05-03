import React, {useState} from 'react';
import {View, StyleSheet, Image} from 'react-native';
import {
  useTheme,
  Avatar,
  Title,
  Caption,
  Paragraph,
  Drawer,
  Text,
  TouchableRipple,
  Switch,
} from 'react-native-paper';
import {DrawerContentScrollView, DrawerItem} from '@react-navigation/drawer';
import Icon from 'react-native-vector-icons/dist/FontAwesome';
import {images, colors, fontsize} from '../constant';
import {TouchableOpacity} from 'react-native-gesture-handler';

export default function DrawerContent(props) {
  const [products, setproducts] = useState([
    {
      id: 1,
      name: 'Giảm đau, hạ sốt',
      imageUrl:
        'https://nhathuocviet.vn/data/items/4981/thuoc-giam-dau-ha-sot-partamol-500mg.png',
    },
    {
      id: 2,
      name: 'Huyết áp, tim mạch',
      imageUrl:
        'https://nhathuocviet.vn/data/items/3762/Thuoc-Zekof-80_10-1720.jpg',
    },
    {
      id: 3,
      name: 'Cơ xương khớp, gút',

      imageUrl:
        'https://nhathuocviet.vn/data/items/1583/e9b0f8578_635406922655430000_HasThumb.jpg',
    },
    {
      id: 4,
      name: 'Da liễu, dị ứng',
      imageUrl:
        'https://nhathuocviet.vn/data/items/4654/thuoc-dieu-tri-mun-trung-ca-nang-acnotin-20.jpg',
    },
  ]);
  const sizes = 100;
  return (
    <View style={{flex: 1}}>
      <View style={{flex: 50}}>
        <View style={styles.userInfoSection}>
          <TouchableOpacity
            onPress={() => {
              props.navigation.navigate('Homescreen');
            }}>
            <View
              style={{
                flexDirection: 'row',
                marginTop: 15,
                marginBottom: 15,
              }}>
              <Avatar.Image color={'#344'} source={images.logohome} size={50} />
              <View
                style={{
                  marginLeft: 15,
                  flexDirection: 'column',
                }}>
                <Title style={styles.title}>MTAShop</Title>
              </View>
            </View>
          </TouchableOpacity>
        </View>

        <DrawerContentScrollView {...props}>
          <View style={styles.drawerContent}>
            <Drawer.Section style={styles.drawerSection}>
              {products.map(item => (
                <DrawerItem
                  icon={({focused, color}) => (
                    <Image
                      source={{uri: item.imageUrl}}
                      style={{height: 80, width: 80}}
                      resizeMode="contain"
                    />
                  )}
                  label={item.name}
                  key={item.id}
                  onPress={() => {
                    props.navigation.navigate('ProductList', {
                      idloaisp: item.id,
                    });
                  }}
                />
              ))}
            </Drawer.Section>
          </View>
        </DrawerContentScrollView>
      </View>
      <View style={{flex: 10}}>
        <View style={{borderTopColor: 'gray', borderTopWidth: 2}}>
          <DrawerItem
            icon={({focused, color}) => (
              <Image
                source={images.infor}
                style={{height: 60, width: 60}}
                resizeMode="contain"
              />
            )}
            label="About"
            onPress={() => {
              props.navigation.navigate('About');
            }}
          />
        </View>
      </View>
      <View style={{flex: 10}}>
        <View>
          <DrawerItem
            icon={({focused, color}) => (
              <Image
                source={images.news}
                style={{height: 60, width: 60}}
                resizeMode="contain"
              />
            )}
            label="Tin tức"
            onPress={() => {
              props.navigation.navigate('News');
            }}
          />
        </View>
      </View>
      <View style={{flex: 10}}>
        <View>
          <DrawerItem
            icon={({focused, color}) => (
              <Image
                source={images.benhly}
                style={{height: 60, width: 60}}
                resizeMode="contain"
              />
            )}
            label="Bệnh lý"
            onPress={() => {
              props.navigation.navigate('About');
            }}
          />
        </View>
      </View>
      <View style={{flex: 10}}>
        <View>
          <DrawerItem
            icon={({focused, color}) => (
              <Image
                source={images.dichvu}
                style={{height: 60, width: 60}}
                resizeMode="contain"
              />
            )}
            label="Dịch vụ đặc biệt"
            onPress={() => {
              props.navigation.navigate('About');
            }}
          />
        </View>
      </View>
      <View style={{flex: 10}}>
        <View>
          <DrawerItem
            icon={({focused, color}) => (
              <Image
                source={images.bacsi}
                style={{height: 60, width: 60}}
                resizeMode="contain"
              />
            )}
            label="Chuyên gia"
            onPress={() => {
              props.navigation.navigate('About');
            }}
          />
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  drawerContent: {
    flex: 1,
  },
  userInfoSection: {
    backgroundColor: colors.primary,

    paddingLeft: 20,
  },
  title: {
    fontSize: fontsize.h2,
    color: 'white',
    marginTop: 5,
    fontWeight: 'bold',
  },
  caption: {
    fontSize: 14,
    lineHeight: 14,
  },
  row: {
    marginTop: 20,
    flexDirection: 'row',
    alignItems: 'center',
  },
  section: {
    flexDirection: 'row',
    alignItems: 'center',
    marginRight: 15,
  },
  paragraph: {
    fontWeight: 'bold',
    marginRight: 3,
  },
  drawerSection: {},
  bottomDrawerSection: {
    borderTopColor: '#f4f4f4',
    borderTopWidth: 1,
  },
  preference: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 12,
    paddingHorizontal: 16,
  },
});
