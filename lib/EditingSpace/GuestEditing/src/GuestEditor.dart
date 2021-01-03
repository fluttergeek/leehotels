part of 'package:lotel/EditingSpace/GuestEditing/GuestEditing.dart';

class GuestEditor extends StatefulWidget {
  final Mode mode;
  const GuestEditor({
    Key key,
    this.mode,
  }) : super(key: key);

  @override
  _GuestEditorState createState() => _GuestEditorState();
}

class _GuestEditorState extends State<GuestEditor> {
  TextEditingController nameControl, contactControl, roomControl;
  String id, picture;
  DateTime from, until;
  int extraBed, members, duration, capacity;
  bool saved = false;

  @override
  void initState() {
    super.initState();
    DashboardState state = BlocProvider.of<DashboardBloc>(context).state;
    if (widget.mode == Mode.edit) id = state.guestInFocus['id'];
    nameControl = TextEditingController(text: state.guestInFocus['name']);
    contactControl = TextEditingController(text: state.guestInFocus['contact']);
    roomControl = TextEditingController(text: state.guestInFocus['roomNumber']);
    from = state.guestInFocus['from'];
    until = state.guestInFocus['until'];
    extraBed = state.guestInFocus['extraBed'];
    members = state.guestInFocus['members'];
    picture = state.guestInFocus['picture'];
    duration = until.difference(from).inDays;
    capacity = state.roomInFocus['capacity'];
  }

  @override
  void dispose() {
    if (saved == false) // TODO: delete image if the guest wasn't checked in
      print("");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.widget.mode == Mode.add ? 'New Guest' : 'Edit Guest',
          style: GoogleFonts.quicksand(
            color: purple,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ).pOnly(left: 5),
        16.heightBox,
        BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xff6C6CE5), width: 3),
              ),
              child: state.guestInFocus['picture'].isNotEmpty
                  ? CachedNetworkImage(imageUrl: state.guestInFocus['picture'])
                  : SizedBox(
                      width: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FocusedMenuHolder(
                            menuBoxDecoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
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
                                    final picker = ImagePicker();

                                    final PickedFile image = await picker
                                        .getImage(source: ImageSource.gallery);
                                    context.read<DashboardBloc>().add(
                                        DashboardEvent.uploadPicture(
                                            image));
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
            ).wh(double.infinity, 150);
          },
        ),
        16.heightBox,
        LightTextField(
            label: 'Name',
            controller: nameControl,
            prefixIcon: Icons.person,
            fillColor: Colors.white),
        16.heightBox,
        RoundedRectangularSlider(
            icon: Icons.people,
            fullWidth: true,
            min: 1,
            max: capacity,
            onChanged: (val) => print(val)),
        16.heightBox,
        RoundedRectangularSlider(
            icon: MaterialCommunityIcons.bed_empty,
            fullWidth: true,
            min: 0,
            max: capacity - 1,
            onChanged: (val) => print(val)),
        16.heightBox,
        LightTextField(
            label: '1',
            controller: roomControl,
            enabled: false,
            prefixIcon: Icons.meeting_room,
            fillColor: Colors.white),
        16.heightBox,
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 3.0,
          shadowColor: Colors.grey[100],
          child: SfDateRangePicker(
            initialSelectedRange: PickerDateRange(from, until),
            minDate: from,
            onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
              if (args.value is PickerDateRange) {
                from = args.value.startDate;
                until = args.value.endDate;

                if (args.value.endDate != null) {
                  duration = args.value.endDate
                      .difference(args.value.startDate)
                      .inDays;
                }
              }
            },
            selectionMode: DateRangePickerSelectionMode.range,
          ),
        ),
        16.heightBox,
        LightTextField(
            label: 'Cellphone Number',
            controller: contactControl,
            prefixIcon: Icons.phone,
            fillColor: Colors.white),
        16.heightBox,
        LightButton(
          color: purple,
          textColor: Colors.white,
          text: this.widget.mode == Mode.add ? 'Check In' : 'Update',
          onPressed: () {
            setState(() {
              saved = true;
            });
            if (widget.mode == Mode.add)
              context.read<DashboardBloc>().add(
                    DashboardEvent.addGuest(
                      contact: contactControl.text,
                      duration: duration,
                      extraBed: extraBed,
                      from: from,
                      members: members,
                      name: nameControl.text,
                      picture: picture,
                      until: until,
                    ),
                  );
            else if (widget.mode == Mode.edit)
              context.read<DashboardBloc>().add(
                    DashboardEvent.editGuest(
                      id: id,
                      contact: contactControl.text,
                      duration: duration,
                      extraBed: extraBed,
                      from: from,
                      members: members,
                      name: nameControl.text,
                      picture: picture,
                      until: until,
                    ),
                  );
          },
        ),
        20.heightBox
      ],
    );
  }
}
