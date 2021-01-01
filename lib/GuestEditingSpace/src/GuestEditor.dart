part of 'package:lotel/GuestEditingSpace/GuestEditingSpace.dart';

class GuestEditor extends StatelessWidget {
  const GuestEditor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New Guest',
          style: GoogleFonts.quicksand(
            color: purple,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ).pOnly(left: 5),
        16.heightBox,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff6C6CE5), width: 3),
          ),
          child: SizedBox(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FocusedMenuHolder(
                  menuBoxDecoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  duration: Duration(milliseconds: 100),
                  animateMenuItems: true,
                  blurBackgroundColor: Colors.black54,
                  bottomOffsetHeight: 100,
                  openWithTap: true,
                  onPressed: () {},
                  child: Icon(
                    Feather.image,
                    size: 40,
                    color: lightPurple,
                  ),
                  menuItems: [
                    FocusedMenuItem(
                        title: Text("Choose File"),
                        trailingIcon: Icon(Icons.file_upload),
                        onPressed: () async {
                          FilePickerResult result = await FilePicker.platform
                              .pickFiles(type: FileType.image);

                          if (result != null) {
                            File file = File(result.files.single.path);
                          } // else { User canceled the picker }
                        }),
                    FocusedMenuItem(
                        title: Text("Webcam"),
                        trailingIcon: Icon(Icons.camera),
                        onPressed: () {}),
                  ],
                ),
                15.heightBox,
                "Guest Valid ID".text.color(lightPurple).make()
              ],
            ),
          ),
        ).wh(double.infinity, 150),
        16.heightBox,
        LightTextField(
            label: 'Name', prefixIcon: Icons.person, fillColor: Colors.white),
        16.heightBox,
        RoundedRectangularSlider(
            icon: Icons.people,
            fullWidth: true,
            min: 1,
            max: 5,
            onChanged: (val) => print(val)),
        16.heightBox,
        RoundedRectangularSlider(
            icon: MaterialCommunityIcons.bed_empty,
            fullWidth: true,
            max: 5,
            onChanged: (val) => print(val)),
        16.heightBox,
        LightTextField(
            label: '1',
            enabled: false,
            prefixIcon: Icons.meeting_room,
            fillColor: Colors.white),
        16.heightBox,
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 3.0,
          shadowColor: Colors.grey[100],
          child: SfDateRangePicker(
            initialSelectedRange: PickerDateRange(DateTime.now(), DateTime.now()),
            minDate: DateTime.now(),
            onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
              if (args.value is PickerDateRange) {
                var _range = DateFormat('dd/MM/yyyy')
                        .format(args.value.startDate)
                        .toString() +
                    ' - ' +
                    DateFormat('dd/MM/yyyy')
                        .format(args.value.endDate ?? args.value.startDate)
                        .toString();
                print(_range);
                if (args.value.endDate != null) {
                  int _rangeCount = args.value.endDate
                      .difference(args.value.startDate)
                      .inDays;
                  print(_rangeCount);
                }
              }
            },
            selectionMode: DateRangePickerSelectionMode.range,
          ),
        ),
        16.heightBox,
        LightTextField(
            label: 'Cellphone Number',
            prefixIcon: Icons.phone,
            fillColor: Colors.white),
        16.heightBox,
        LightButton(
          color: purple,
          textColor: Colors.white,
          text: 'Check In',
          onPressed: () {},
        ),
      ],
    );
  }
}
