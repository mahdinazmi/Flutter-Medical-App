import 'package:flutter/material.dart';

class DoctorModel {
  String name;
  String image;
  Color imageBox;
  List<String> specialties;
  double score;
  String bio;
  List<CalendarModel> calendar;
  List<TimeModel> time;
  DoctorModel({
    required this.name,
    required this.image,
    required this.imageBox,
    required this.specialties,
    required this.score,
    required this.bio,
    required this.calendar,
    required this.time
  });
  
  static List<DoctorModel> getDoctors() {
    List<DoctorModel> doctors = [];
    doctors.add(
      DoctorModel(
        name: 'Dr. Jenny Wilson',
        image: 'assets/images/jenny.png',
        imageBox: const Color(0xffFFA340).withOpacity(0.3),
        specialties: ['Dental Surgeon','Aesthetic Surgeon','General Dentist'],
        score: 4.8,
        bio: 'Dr. Jenny Wilson (Implantologist),  is a Dentist in America, she has 20 years of experience.',
        calendar: [
          CalendarModel(
            dayNumber: 14, 
            dayName: 'Sun',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15, 
            dayName: 'Mon',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16, 
            dayName: 'Tue',
            isSelected: true
          ),
          CalendarModel(
            dayNumber: 17, 
            dayName: 'Wed',
            isSelected: false
          )
        ],
        time: [
          TimeModel(
            time: '09:00 AM',
            isSelected: true
          ),
          TimeModel(
            time: '11:00 AM',
            isSelected: false
          ),
          TimeModel(
            time: '03:00 PM',
            isSelected: false
          )
        ]
      ),
    );
     doctors.add(
      DoctorModel(
        name: 'Dr. Kristin Watson',
        image: 'assets/images/kristin.png',
        imageBox: const Color(0xff3CFFC4).withOpacity(0.3),
        specialties: ['Dental Surgeon','Aesthetic Surgeon','General Dentist'],
        score: 4.8,
        bio: 'Dr. Kristin Watson (Implantologist),  is a Dentist in America, she has 20 years of experience.',
          calendar: [
          CalendarModel(
            dayNumber: 14, 
            dayName: 'Sun',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 15, 
            dayName: 'Mon',
            isSelected: false
          ),
          CalendarModel(
            dayNumber: 16, 
            dayName: 'Tue',
            isSelected: true
          ),
          CalendarModel(
            dayNumber: 17, 
            dayName: 'Wed',
            isSelected: false
          )
        ],
         time: [
          TimeModel(
            time: '09:00 AM',
            isSelected: true
          ),
          TimeModel(
            time: '11:00 AM',
            isSelected: false
          ),
          TimeModel(
            time: '03:00 PM',
            isSelected: false
          )
        ]
      )
    );
    return doctors;
  }
}

class CalendarModel {
  final int dayNumber;
  final String dayName;
  bool isSelected;
  CalendarModel({
    required this.dayNumber, 
    required this.dayName,
    required this.isSelected
  });
}

class TimeModel {
  final String time;
  bool isSelected;
  TimeModel({
    required this.time,
    required this.isSelected
  });
}