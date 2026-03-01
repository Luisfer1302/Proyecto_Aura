import 'package:flutter/material.dart';

void main() => runApp(AuraDashboardApp());

class AuraDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aura Wellness Dashboard',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF13ec5b),
        scaffoldBackgroundColor: Color(0xFFf6f8f6),
        fontFamily: 'Inter',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF13ec5b),
        scaffoldBackgroundColor: Color(0xFF102216),
        fontFamily: 'Inter',
      ),
      themeMode: ThemeMode.system,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeSection(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHeader(context),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: buildNavBar(context),
    );
  }
}

AppBar buildHeader(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.95),
    elevation: 1,
    titleSpacing: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuBc8KBJaaJ-Zz72viSt_6qU3V13hsQqN1vGgklf4uMuRsphJXU8OuW8iAonCrC4SlP67kmSc__rPYG8sbX5xCeuyDejq9QdRycVc4mkodVP6d6fQJUrMm4BkGWrvnrws5oXkuMUIZQx4y6XZN_PI1sLhdFeIbU6EFl_yUM19s89y3ASenhILISh2FMGJwF6eh4wP4xk92OYQPgc-P74TqGigcXfnQD0tW1A4ix5NvOdwfv6AuTkagHLJHklAelV418rQp-oSrujalEH'),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good morning,', style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text('Alex Rivera', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        )
      ],
    ),
  );
}

BottomNavigationBar buildNavBar(BuildContext context) {
  return BottomNavigationBar(
    currentIndex: context.findAncestorStateOfType<_DashboardPageState>()?._selectedIndex ?? 0,
    onTap: context.findAncestorStateOfType<_DashboardPageState>()?._onItemTapped,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.monitoring),
        label: 'Health',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.event),
        label: 'Schedule',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  );
}

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      children: [
        DailyScoreCard(),
        SizedBox(height: 24),
        CoreFeatures(),
        SizedBox(height: 24),
        SecondaryInsights(),
      ],
    );
  }
}

class DailyScoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Daily Wellness Score'.toUpperCase(), style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 1, color: Colors.grey[600])),
              Icon(Icons.info, color: Theme.of(context).primaryColor),
            ],
          ),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('84', style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900)),
              SizedBox(width: 8),
              Row(
                children: [
                  Icon(Icons.trending_up, color: Theme.of(context).primaryColor, size: 16),
                  SizedBox(width: 4),
                  Text('+5%', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
          SizedBox(height: 16),
          LinearProgressIndicator(
            value: 0.84,
            backgroundColor: Colors.grey[300],
            color: Theme.of(context).primaryColor,
            minHeight: 8,
          ),
          SizedBox(height: 16),
          Text("You're doing better than 82% of users today. Keep it up!", style: TextStyle(color: Colors.grey[600], fontSize: 14)),
        ],
      ),
    );
  }
}

class CoreFeatures extends StatelessWidget {
  Widget _featureCard(BuildContext context, {required IconData icon, required String title, required String subtitle, Color? color, Color? textColor}) {
    final primary = color ?? Theme.of(context).primaryColor;
    final txt = textColor ?? Colors.white;
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
              child: Icon(icon, size: 32, color: txt),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: txt)),
                  SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(fontSize: 14, color: txt.withOpacity(0.8))),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: txt),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Core Features', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        SizedBox(height: 12),
        _featureCard(context, icon: Icons.favorite, title: 'Health Monitoring', subtitle: 'Check vitals and biometrics', color: Colors.green.shade600),
        SizedBox(height: 12),
        _featureCard(context, icon: Icons.calendar_today, title: 'Schedule', subtitle: 'Next: Dr. Smith at 2:00 PM', color: Colors.indigo.shade600),
        SizedBox(height: 12),
        _featureCard(context, icon: Icons.psychology, title: 'Mental Wellness', subtitle: 'Meditation and mood tracking', color: Colors.black87, textColor: Colors.white),
      ],
    );
  }
}

class SecondaryInsights extends StatelessWidget {
  Widget _insightCard(BuildContext context, {required IconData icon, required String label, required String value, Color? iconColor}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor ?? Colors.orange, size: 28),
          SizedBox(height: 8),
          Text(label.toUpperCase(), style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1)),
          SizedBox(height: 4),
          Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children: [
        _insightCard(context, icon: Icons.bedtime, label: 'Sleep', value: '7h 20m', iconColor: Colors.orange),
        _insightCard(context, icon: Icons.water_drop, label: 'Hydration', value: '1.2L / 2L', iconColor: Colors.blue),
      ],
    );
  }
}
