import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

class DeviceInfoPage extends StatefulWidget {
  @override
  _DeviceInfoPageState createState() => _DeviceInfoPageState();
}

class _DeviceInfoPageState extends State<DeviceInfoPage> {
  @override
  void initState() {
    super.initState();
    _apa();
  }

  void _apa() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    print(androidDeviceInfo.model);
    print(androidDeviceInfo.manufacturer);
    print(androidDeviceInfo.product);
    print(androidDeviceInfo.brand);
    print(androidDeviceInfo.display);
    print(androidDeviceInfo.isPhysicalDevice);
    print(androidDeviceInfo.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Info'),
      ),
      body: const Center(
        child: Text('Open console'),
      ),
    );
  }
}
