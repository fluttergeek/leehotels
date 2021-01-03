part of 'package:lotel/MainSpace/Dashboard/Dashboard.dart';

class RoomItem extends StatefulWidget {
  final String number;
  final Color color;
  final String members;
  final String description;
  final String duration;
  final String vacancy;
  final String guestID;

  RoomItem({
    this.color,
    this.duration,
    this.vacancy,
    this.members,
    this.number,
    this.description,
    this.guestID,
  });

  @override
  _RoomItemState createState() => _RoomItemState();
}

class _RoomItemState extends State<RoomItem> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        margin: EdgeInsets.only(bottom: 10.0, left: 20.0, right: 15.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: hovered
                ? [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 13.0,
                      spreadRadius: 0.0,
                    ),
                  ]
                : []),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        height: 28.0,
                        width: 28.0,
                        decoration: BoxDecoration(
                          color: widget.color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.meeting_room,
                            color: widget.color,
                            size: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        widget.number,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.description,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0,
                          color: Colors.black45,
                        ),
                      ).pSymmetric(h: 30),
                      Text(
                        widget.duration,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0,
                          color: Colors.black45,
                        ),
                      ).pSymmetric(h: 30),
                      Text(
                        widget.vacancy,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0,
                          color: Colors.black87,
                        ),
                      ).pSymmetric(h: 30),
                      IconButton(
                        onPressed: () {
                          context
                              .read<NavigationBloc>()
                              .add(NavigationEvent.editRoom());
                          context
                              .read<DashboardBloc>()
                              .add(DashboardEvent.roomInFocus(widget.number));
                        },
                        icon: Icon(Feather.settings, size: 14),
                      ),
                      Text(
                        widget.members,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0,
                          color: Colors.black45,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context
                              .read<DashboardBloc>()
                              .add(DashboardEvent.guestInFocus(widget.guestID)); // Guest ID is empty for new guest
                          context.read<DashboardBloc>().add(
                              DashboardEvent.roomInFocus(widget
                                  .number)); // To account for room capacity
                          widget.vacancy == 'Vacant'
                              ? context
                                  .read<NavigationBloc>()
                                  .add(NavigationEvent.newGuest())
                              : context
                                  .read<NavigationBloc>()
                                  .add(NavigationEvent.editGuest());
                        },
                        icon: Icon(
                            widget.members == "0"
                                ? Feather.user_x
                                : Feather.user,
                            size: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
