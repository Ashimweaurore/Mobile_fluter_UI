import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String salary;

  const JobPage({
    super.key,
    required this.companyName,
    required this.jobTitle,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header Image and Back Button
          Stack(
            children: [
              Image.asset(
                "assets/office.jpg",
                height: 180, // Reduced height
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              // Status Bar Background
              Container(
                height: MediaQuery.of(context).padding.top,
                color: Colors.black.withOpacity(0.2),
              ),
              // Back Button and Status Icons
              Positioned(
                top: MediaQuery.of(context).padding.top,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.signal_cellular_alt, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Icon(Icons.wifi, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Icon(Icons.battery_full, color: Colors.white, size: 16),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Content Section
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // Google Logo
                Transform.translate(
                  offset: const Offset(0, -30),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Image.asset("assets/google.png", width: 40, height: 40),
                  ),
                ),

                // Job Title and Location
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const Text(
                        "Product Designer",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "California, USA",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Navigation Tabs
                      Row(
                        children: [
                          _buildTab("Description", isSelected: true),
                          _buildTab("Company"),
                          _buildTab("Aplicant"),
                          _buildTab("Salary"),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Job Responsibilities Section
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Job Responsibilities",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildResponsibilityItem(
                        "Deliver a well-crafted design that follows standard for consistency in quality and experience.",
                      ),
                      const SizedBox(height: 8),
                      _buildResponsibilityItem(
                        "Design creative solutions that deliver not only value customer but also solve business objectives.",
                      ),
                      const SizedBox(height: 8),
                      _buildResponsibilityItem(
                        "You are also required to contribute to the design and critics, conceptual discussion, and also maintaining consistency of design system.",
                      ),
                      const SizedBox(height: 16),

                      // Skills Needed Section
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Skills Needed",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Lead • Ux Design • Problem Solving • Critical",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4169E1),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Apply Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.chat_bubble_outline,
                color: Color(0xFF4169E1),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String text, {bool isSelected = false}) {
    return Expanded(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: 2,
            color: isSelected ? Colors.black : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget _buildResponsibilityItem(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey[600],
        height: 1.3,
      ),
    );
  }
}