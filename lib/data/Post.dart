class Post {
  final String pathLogo;
  final String job;
  final bool isSaved;
  final String companyName;
  final String location;
  final String salary;
  final String createJobOffer;

  Post(this.pathLogo, this.job, this.isSaved, this.companyName, this.location,
      this.salary, this.createJobOffer);
}


List<Post> myJob = [
  Post('assets/.......', 'Flutter', false, 'Zoop', 'Tehran,Iran', '100.000\$', '1 minute ago'),
  Post('assets/.......', 'Flutter', false, 'Zoop', 'Tehran,Iran', '100.000\$', '1 minute ago'),
  Post('assets/.......', 'Flutter', false, 'Zoop', 'Tehran,Iran', '100.000\$', '1 minute ago')
];