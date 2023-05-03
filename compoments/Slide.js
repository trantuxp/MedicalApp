import {
  Text,
  StyleSheet,
  View,
  SafeAreaView,
  Dimensions,
  ScrollView,
  Image,
} from 'react-native';
import React, {Component, useState} from 'react';

const images = [
  'https://tamanhhospital.vn/wp-content/uploads/2023/04/banner-live-09052023-desk.jpg',
  'https://tamanhhospital.vn/wp-content/uploads/2023/04/banner-nam-hanh-dong-vi-cong-dong-desk.jpg',
  'https://tamanhhospital.vn/wp-content/uploads/2023/04/banner-phong-kham-vip-ivf-desk.jpg',
];

const WIDTH = Dimensions.get('window').width;
const HEIGHT = Dimensions.get('window').height;

export default function Slide() {
  const [imgActive, setimgActive] = useState(0);

  onchange = nativeEvent => {
    const slide = Math.ceil(
      nativeEvent.contentOffset.x / nativeEvent.layoutMeasurement.width,
    );
    if (slide != imgActive) {
      setimgActive(slide);
    }
  };
  return (
    <SafeAreaView style={{flex: 1}}>
      <View
        style={{
          width: WIDTH,
          height: HEIGHT * 0.25,
        }}>
        <ScrollView
          onScroll={({nativeEvent}) => onchange(nativeEvent)}
          showsHorizontalScrollIndicator={false}
          pagingEnabled
          horizontal
          style={{
            width: WIDTH,
            height: HEIGHT * 0.25,
          }}>
          {images.map((e, index) => (
            <Image
              key={e}
              resizeMode="stretch"
              style={{width: WIDTH, height: HEIGHT * 0.25}}
              source={{uri: e}}
            />
          ))}
        </ScrollView>
        <View style={styles.wrapDot}>
          {images.map((e, index) => (
            <Text
              key={e}
              style={imgActive == index ? styles.dotActive : styles.dot}>
              ●
            </Text>
          ))}
        </View>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  wrapDot: {
    position: 'absolute',
    bottom: 0,
    flexDirection: 'row',
    alignSelf: 'center',
  },
  dotActive: {
    margin: 3,
    color: 'black',
  },
  dot: {
    margin: 3,
    color: 'white',
  },
});
