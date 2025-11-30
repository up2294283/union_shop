drawer: Drawer(
  child: ListView(
    children: [
      const DrawerHeader(
        child: Text("Union Shop", style: TextStyle(fontSize: 24)),
      ),
      ListTile(
        title: const Text("Home"),
        onTap: () => Navigator.pop(context),
      ),
      ListTile(
        title: const Text("Collections"),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const CollectionsPage()));
        },
      ),
      ListTile(
        title: const Text("Sale"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const SalePage()));
        },
      ),
      ListTile(
        title: const Text("About Us"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const AboutPage()));
        },
      ),
      ListTile(
        title: const Text("Login"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const LoginPage()));
        },
      ),
    ],
  ),
),