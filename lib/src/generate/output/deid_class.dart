// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/base.dart';

class DeIdElement {
  final int tag;
  final String keyword;
  final VR vr;
  final VM vm;
  final bool isSingleton;

  const DeIdElement(this.tag, this.keyword, this.vr, this.vm, this.isSingleton);

  static const kAffectedSOPInstanceUID = const DeIdElement(0x00001000, "kAffectedSOPInstanceUID", VR.kUL, VM.k1, true);
  static const kRequestedSOPInstanceUID = const DeIdElement(0x00001001, "kRequestedSOPInstanceUID", VR.kUI, VM.k1, true);
  static const kMediaStorageSOPInstanceUID = const DeIdElement(0x00020003, "kMediaStorageSOPInstanceUID", VR.kUI, VM.k1, true);
  static const kReferencedSOPClassUID = const DeIdElement(0x00081150, "kReferencedSOPClassUID", VR.kUI, VM.k1, true);
  static const kInstanceCreatorUID = const DeIdElement(0x00080014, "kInstanceCreatorUID", VR.kUI, VM.k1, true);
  static const kInstanceCoercionDateTime = const DeIdElement(0x00080015, "kInstanceCoercionDateTime", VR.kDT, VM.k1, true);
  static const kSOPInstanceUID = const DeIdElement(0x00080018, "kSOPInstanceUID", VR.kUI, VM.k1, true);
  static const kStudyDate = const DeIdElement(0x00080020, "kStudyDate", VR.kDA, VM.k1, true);
  static const kSeriesDate = const DeIdElement(0x00080021, "kSeriesDate", VR.kDA, VM.k1, true);
  static const kAcquisitionDate = const DeIdElement(0x00080022, "kAcquisitionDate", VR.kDA, VM.k1, true);
  static const kContentDate = const DeIdElement(0x00080023, "kContentDate", VR.kDA, VM.k1, true);
  static const kOverlayDate = const DeIdElement(0x00080024, "kOverlayDate", VR.kDA, VM.k1, true);
  static const kCurveDate = const DeIdElement(0x00080025, "kCurveDate", VR.kDA, VM.k1, true);
  static const kAcquisitionDateTime = const DeIdElement(0x0008002a, "kAcquisitionDateTime", VR.kDT, VM.k1, true);
  static const kStudyTime = const DeIdElement(0x00080030, "kStudyTime", VR.kTM, VM.k1, true);
  static const kSeriesTime = const DeIdElement(0x00080031, "kSeriesTime", VR.kTM, VM.k1, true);
  static const kAcquisitionTime = const DeIdElement(0x00080032, "kAcquisitionTime", VR.kTM, VM.k1, true);
  static const kContentTime = const DeIdElement(0x00080033, "kContentTime", VR.kTM, VM.k1, true);
  static const kOverlayTime = const DeIdElement(0x00080034, "kOverlayTime", VR.kTM, VM.k1, true);
  static const kCurveTime = const DeIdElement(0x00080035, "kCurveTime", VR.kTM, VM.k1, true);
  static const kAccessionNumber = const DeIdElement(0x00080050, "kAccessionNumber", VR.kSH, VM.k1, true);
  static const kFailedSOPInstanceUIDList = const DeIdElement(0x00080058, "kFailedSOPInstanceUIDList", VR.kUI, VM.k1_n, false);
  static const kInstitutionName = const DeIdElement(0x00080080, "kInstitutionName", VR.kLO, VM.k1, true);
  static const kInstitutionAddress = const DeIdElement(0x00080081, "kInstitutionAddress", VR.kST, VM.k1, true);
  static const kInstitutionCodeSequence = const DeIdElement(0x00080082, "kInstitutionCodeSequence", VR.kSQ, VM.k1, true);
  static const kReferringPhysicianName = const DeIdElement(0x00080090, "kReferringPhysicianName", VR.kPN, VM.k1, true);
  static const kReferringPhysicianAddress = const DeIdElement(0x00080092, "kReferringPhysicianAddress", VR.kST, VM.k1, true);
  static const kReferringPhysicianTelephoneNumbers = const DeIdElement(0x00080094, "kReferringPhysicianTelephoneNumbers", VR.kSH, VM.k1_n, false);
  static const kReferringPhysicianIdentificationSequence = const DeIdElement(0x00080096, "kReferringPhysicianIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kContextGroupExtensionCreatorUID = const DeIdElement(0x0008010d, "kContextGroupExtensionCreatorUID", VR.kUI, VM.k1, true);
  static const kTimezoneOffsetFromUTC = const DeIdElement(0x00080201, "kTimezoneOffsetFromUTC", VR.kSH, VM.k1, true);
  static const kStationName = const DeIdElement(0x00081010, "kStationName", VR.kSH, VM.k1, true);
  static const kStudyDescription = const DeIdElement(0x00081030, "kStudyDescription", VR.kLO, VM.k1, true);
  static const kSeriesDescription = const DeIdElement(0x0008103e, "kSeriesDescription", VR.kLO, VM.k1, true);
  static const kInstitutionalDepartmentName = const DeIdElement(0x00081040, "kInstitutionalDepartmentName", VR.kLO, VM.k1, true);
  static const kPhysiciansOfRecord = const DeIdElement(0x00081048, "kPhysiciansOfRecord", VR.kPN, VM.k1_n, false);
  static const kPhysiciansOfRecordIdentificationSequence = const DeIdElement(0x00081049, "kPhysiciansOfRecordIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kPerformingPhysicianName = const DeIdElement(0x00081050, "kPerformingPhysicianName", VR.kPN, VM.k1_n, false);
  static const kPerformingPhysicianIdentificationSequence = const DeIdElement(0x00081052, "kPerformingPhysicianIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kNameOfPhysiciansReadingStudy = const DeIdElement(0x00081060, "kNameOfPhysiciansReadingStudy", VR.kPN, VM.k1_n, false);
  static const kPhysiciansReadingStudyIdentificationSequence = const DeIdElement(0x00081062, "kPhysiciansReadingStudyIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kOperatorsName = const DeIdElement(0x00081070, "kOperatorsName", VR.kPN, VM.k1_n, false);
  static const kOperatorIdentificationSequence = const DeIdElement(0x00081072, "kOperatorIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kAdmittingDiagnosesDescription = const DeIdElement(0x00081080, "kAdmittingDiagnosesDescription", VR.kLO, VM.k1_n, false);
  static const kAdmittingDiagnosesCodeSequence = const DeIdElement(0x00081084, "kAdmittingDiagnosesCodeSequence", VR.kSQ, VM.k1, true);
  static const kReferencedStudySequence = const DeIdElement(0x00081110, "kReferencedStudySequence", VR.kSQ, VM.k1, true);
  static const kReferencedPerformedProcedureStepSequence = const DeIdElement(0x00081111, "kReferencedPerformedProcedureStepSequence", VR.kSQ, VM.k1, true);
  static const kReferencedPatientSequence = const DeIdElement(0x00081120, "kReferencedPatientSequence", VR.kSQ, VM.k1, true);
  static const kReferencedImageSequence = const DeIdElement(0x00081140, "kReferencedImageSequence", VR.kSQ, VM.k1, true);
  static const kReferencedSOPInstanceUID = const DeIdElement(0x00081155, "kReferencedSOPInstanceUID", VR.kUI, VM.k1, true);
  static const kTransactionUID = const DeIdElement(0x00081195, "kTransactionUID", VR.kUI, VM.k1, true);
  static const kDerivationDescription = const DeIdElement(0x00082111, "kDerivationDescription", VR.kST, VM.k1, true);
  static const kSourceImageSequence = const DeIdElement(0x00082112, "kSourceImageSequence", VR.kSQ, VM.k1, true);
  static const kIrradiationEventUID = const DeIdElement(0x00083010, "kIrradiationEventUID", VR.kUI, VM.k1_n, false);
  static const kIdentifyingComments = const DeIdElement(0x00084000, "kIdentifyingComments", VR.kLT, VM.k1, true);
  static const kCreatorVersionUID = const DeIdElement(0x00089123, "kCreatorVersionUID", VR.kUI, VM.k1, true);
  static const kPatientName = const DeIdElement(0x00100010, "kPatientName", VR.kPN, VM.k1, true);
  static const kPatientID = const DeIdElement(0x00100020, "kPatientID", VR.kLO, VM.k1, true);
  static const kIssuerOfPatientID = const DeIdElement(0x00100021, "kIssuerOfPatientID", VR.kLO, VM.k1, true);
  static const kPatientBirthDate = const DeIdElement(0x00100030, "kPatientBirthDate", VR.kDA, VM.k1, true);
  static const kPatientBirthTime = const DeIdElement(0x00100032, "kPatientBirthTime", VR.kTM, VM.k1, true);
  static const kPatientSex = const DeIdElement(0x00100040, "kPatientSex", VR.kCS, VM.k1, true);
  static const kPatientInsurancePlanCodeSequence = const DeIdElement(0x00100050, "kPatientInsurancePlanCodeSequence", VR.kSQ, VM.k1, true);
  static const kPatientPrimaryLanguageCodeSequence = const DeIdElement(0x00100101, "kPatientPrimaryLanguageCodeSequence", VR.kSQ, VM.k1, true);
  static const kPatientPrimaryLanguageModifierCodeSequence = const DeIdElement(0x00100102, "kPatientPrimaryLanguageModifierCodeSequence", VR.kSQ, VM.k1, true);
  static const kOtherPatientIDs = const DeIdElement(0x00101000, "kOtherPatientIDs", VR.kLO, VM.k1_n, false);
  static const kOtherPatientNames = const DeIdElement(0x00101001, "kOtherPatientNames", VR.kPN, VM.k1_n, false);
  static const kOtherPatientIDsSequence = const DeIdElement(0x00101002, "kOtherPatientIDsSequence", VR.kSQ, VM.k1, true);
  static const kPatientBirthName = const DeIdElement(0x00101005, "kPatientBirthName", VR.kPN, VM.k1, true);
  static const kPatienElemente = const DeIdElement(0x00101010, "kPatienElemente", VR.kAS, VM.k1, true);
  static const kPatientSize = const DeIdElement(0x00101020, "kPatientSize", VR.kDS, VM.k1, true);
  static const kPatientWeight = const DeIdElement(0x00101030, "kPatientWeight", VR.kDS, VM.k1, true);
  static const kPatientAddress = const DeIdElement(0x00101040, "kPatientAddress", VR.kLO, VM.k1, true);
  static const kInsurancePlanIdentification = const DeIdElement(0x00101050, "kInsurancePlanIdentification", VR.kLO, VM.k1_n, false);
  static const kPatientMotherBirthName = const DeIdElement(0x00101060, "kPatientMotherBirthName", VR.kPN, VM.k1, true);
  static const kMilitaryRank = const DeIdElement(0x00101080, "kMilitaryRank", VR.kLO, VM.k1, true);
  static const kBranchOfService = const DeIdElement(0x00101081, "kBranchOfService", VR.kLO, VM.k1, true);
  static const kMedicalRecordLocator = const DeIdElement(0x00101090, "kMedicalRecordLocator", VR.kLO, VM.k1, true);
  static const kReferencedPatientPhotoSequence = const DeIdElement(0x00101100, "kReferencedPatientPhotoSequence", VR.kSQ, VM.k1, true);
  static const kMedicalAlerts = const DeIdElement(0x00102000, "kMedicalAlerts", VR.kLO, VM.k1_n, false);
  static const kAllergies = const DeIdElement(0x00102110, "kAllergies", VR.kLO, VM.k1_n, false);
  static const kCountryOfResidence = const DeIdElement(0x00102150, "kCountryOfResidence", VR.kLO, VM.k1, true);
  static const kRegionOfResidence = const DeIdElement(0x00102152, "kRegionOfResidence", VR.kLO, VM.k1, true);
  static const kPatientTelephoneNumbers = const DeIdElement(0x00102154, "kPatientTelephoneNumbers", VR.kSH, VM.k1_n, false);
  static const kEthnicGroup = const DeIdElement(0x00102160, "kEthnicGroup", VR.kSH, VM.k1, true);
  static const kOccupation = const DeIdElement(0x00102180, "kOccupation", VR.kSH, VM.k1, true);
  static const kSmokingStatus = const DeIdElement(0x001021a0, "kSmokingStatus", VR.kCS, VM.k1, true);
  static const kAdditionalPatientHistory = const DeIdElement(0x001021b0, "kAdditionalPatientHistory", VR.kLT, VM.k1, true);
  static const kPregnancyStatus = const DeIdElement(0x001021c0, "kPregnancyStatus", VR.kUS, VM.k1, true);
  static const kLastMenstrualDate = const DeIdElement(0x001021d0, "kLastMenstrualDate", VR.kDA, VM.k1, true);
  static const kPatientReligiousPreference = const DeIdElement(0x001021f0, "kPatientReligiousPreference", VR.kLO, VM.k1, true);
  static const kPatientSexNeutered = const DeIdElement(0x00102203, "kPatientSexNeutered", VR.kCS, VM.k1, true);
  static const kResponsiblePerson = const DeIdElement(0x00102297, "kResponsiblePerson", VR.kPN, VM.k1, true);
  static const kResponsibleOrganization = const DeIdElement(0x00102299, "kResponsibleOrganization", VR.kLO, VM.k1, true);
  static const kPatientComments = const DeIdElement(0x00104000, "kPatientComments", VR.kLT, VM.k1, true);
  static const kContrastBolusAgent = const DeIdElement(0x00180010, "kContrastBolusAgent", VR.kLO, VM.k1, true);
  static const kDeviceSerialNumber = const DeIdElement(0x00181000, "kDeviceSerialNumber", VR.kLO, VM.k1, true);
  static const kDeviceUID = const DeIdElement(0x00181002, "kDeviceUID", VR.kUI, VM.k1, true);
  static const kPlateID = const DeIdElement(0x00181004, "kPlateID", VR.kLO, VM.k1, true);
  static const kGeneratorID = const DeIdElement(0x00181005, "kGeneratorID", VR.kLO, VM.k1, true);
  static const kCassetteID = const DeIdElement(0x00181007, "kCassetteID", VR.kLO, VM.k1, true);
  static const kGantryID = const DeIdElement(0x00181008, "kGantryID", VR.kLO, VM.k1, true);
  static const kProtocolName = const DeIdElement(0x00181030, "kProtocolName", VR.kLO, VM.k1, true);
  static const kAcquisitionDeviceProcessingDescription = const DeIdElement(0x00181400, "kAcquisitionDeviceProcessingDescription", VR.kLO, VM.k1, true);
  static const kTargetUID = const DeIdElement(0x00182042, "kTargetUID", VR.kUI, VM.k1, true);
  static const kAcquisitionComments = const DeIdElement(0x00184000, "kAcquisitionComments", VR.kLT, VM.k1, true);
  static const kDetectorID = const DeIdElement(0x0018700a, "kDetectorID", VR.kSH, VM.k1, true);
  static const kAcquisitionProtocolDescription = const DeIdElement(0x00189424, "kAcquisitionProtocolDescription", VR.kLT, VM.k1, true);
  static const kStartAcquisitionDateTime = const DeIdElement(0x00189516, "kStartAcquisitionDateTime", VR.kDT, VM.k1, true);
  static const kEndAcquisitionDateTime = const DeIdElement(0x00189517, "kEndAcquisitionDateTime", VR.kDT, VM.k1, true);
  static const kContributionDescription = const DeIdElement(0x0018a003, "kContributionDescription", VR.kST, VM.k1, true);
  static const kStudyInstanceUID = const DeIdElement(0x0020000d, "kStudyInstanceUID", VR.kUI, VM.k1, true);
  static const kSeriesInstanceUID = const DeIdElement(0x0020000e, "kSeriesInstanceUID", VR.kUI, VM.k1, true);
  static const kStudyID = const DeIdElement(0x00200010, "kStudyID", VR.kSH, VM.k1, true);
  static const kFrameOfReferenceUID = const DeIdElement(0x00200052, "kFrameOfReferenceUID", VR.kUI, VM.k1, true);
  static const kSynchronizationFrameOfReferenceUID = const DeIdElement(0x00200200, "kSynchronizationFrameOfReferenceUID", VR.kUI, VM.k1, true);
  static const kModifyingDeviceID = const DeIdElement(0x00203401, "kModifyingDeviceID", VR.kCS, VM.k1, true);
  static const kModifyingDeviceManufacturer = const DeIdElement(0x00203404, "kModifyingDeviceManufacturer", VR.kLO, VM.k1, true);
  static const kModifiedImageDescription = const DeIdElement(0x00203406, "kModifiedImageDescription", VR.kLO, VM.k1, true);
  static const kImageComments = const DeIdElement(0x00204000, "kImageComments", VR.kLT, VM.k1, true);
  static const kFrameComments = const DeIdElement(0x00209158, "kFrameComments", VR.kLT, VM.k1, true);
  static const kConcatenationUID = const DeIdElement(0x00209161, "kConcatenationUID", VR.kUI, VM.k1, true);
  static const kDimensionOrganizationUID = const DeIdElement(0x00209164, "kDimensionOrganizationUID", VR.kUI, VM.k1, true);
  static const kPaletteColorLookupTableUID = const DeIdElement(0x00281199, "kPaletteColorLookupTableUID", VR.kUI, VM.k1, true);
  static const kLargePaletteColorLookupTableUID = const DeIdElement(0x00281214, "kLargePaletteColorLookupTableUID", VR.kUI, VM.k1, true);
  static const kImagePresentationComments = const DeIdElement(0x00284000, "kImagePresentationComments", VR.kLT, VM.k1, true);
  static const kStudyIDIssuer = const DeIdElement(0x00320012, "kStudyIDIssuer", VR.kLO, VM.k1, true);
  static const kScheduledStudyLocation = const DeIdElement(0x00321020, "kScheduledStudyLocation", VR.kLO, VM.k1, true);
  static const kScheduledStudyLocationAETitle = const DeIdElement(0x00321021, "kScheduledStudyLocationAETitle", VR.kAE, VM.k1_n, false);
  static const kReasonForStudy = const DeIdElement(0x00321030, "kReasonForStudy", VR.kLO, VM.k1, true);
  static const kRequestingPhysician = const DeIdElement(0x00321032, "kRequestingPhysician", VR.kPN, VM.k1, true);
  static const kRequestingService = const DeIdElement(0x00321033, "kRequestingService", VR.kLO, VM.k1, true);
  static const kRequestedProcedureDescription = const DeIdElement(0x00321060, "kRequestedProcedureDescription", VR.kLO, VM.k1, true);
  static const kRequestedContrasElementent = const DeIdElement(0x00321070, "kRequestedContrasElementent", VR.kLO, VM.k1, true);
  static const kStudyComments = const DeIdElement(0x00324000, "kStudyComments", VR.kLT, VM.k1, true);
  static const kReferencedPatientAliasSequence = const DeIdElement(0x00380004, "kReferencedPatientAliasSequence", VR.kSQ, VM.k1, true);
  static const kAdmissionID = const DeIdElement(0x00380010, "kAdmissionID", VR.kLO, VM.k1, true);
  static const kIssuerOfAdmissionID = const DeIdElement(0x00380011, "kIssuerOfAdmissionID", VR.kLO, VM.k1, true);
  static const kScheduledPatientInstitutionResidence = const DeIdElement(0x0038001e, "kScheduledPatientInstitutionResidence", VR.kLO, VM.k1, true);
  static const kAdmittingDate = const DeIdElement(0x00380020, "kAdmittingDate", VR.kDA, VM.k1, true);
  static const kAdmittingTime = const DeIdElement(0x00380021, "kAdmittingTime", VR.kTM, VM.k1, true);
  static const kDischargeDiagnosisDescription = const DeIdElement(0x00380040, "kDischargeDiagnosisDescription", VR.kLO, VM.k1, true);
  static const kSpecialNeeds = const DeIdElement(0x00380050, "kSpecialNeeds", VR.kLO, VM.k1, true);
  static const kServiceEpisodeID = const DeIdElement(0x00380060, "kServiceEpisodeID", VR.kLO, VM.k1, true);
  static const kIssuerOfServiceEpisodeID = const DeIdElement(0x00380061, "kIssuerOfServiceEpisodeID", VR.kLO, VM.k1, true);
  static const kServiceEpisodeDescription = const DeIdElement(0x00380062, "kServiceEpisodeDescription", VR.kLO, VM.k1, true);
  static const kCurrentPatientLocation = const DeIdElement(0x00380300, "kCurrentPatientLocation", VR.kLO, VM.k1, true);
  static const kPatientInstitutionResidence = const DeIdElement(0x00380400, "kPatientInstitutionResidence", VR.kLO, VM.k1, true);
  static const kPatientState = const DeIdElement(0x00380500, "kPatientState", VR.kLO, VM.k1, true);
  static const kVisitComments = const DeIdElement(0x00384000, "kVisitComments", VR.kLT, VM.k1, true);
  static const kScheduledStationAETitle = const DeIdElement(0x00400001, "kScheduledStationAETitle", VR.kAE, VM.k1_n, false);
  static const kScheduledProcedureStepStartDate = const DeIdElement(0x00400002, "kScheduledProcedureStepStartDate", VR.kDA, VM.k1, true);
  static const kScheduledProcedureStepStartTime = const DeIdElement(0x00400003, "kScheduledProcedureStepStartTime", VR.kTM, VM.k1, true);
  static const kScheduledProcedureStepEndDate = const DeIdElement(0x00400004, "kScheduledProcedureStepEndDate", VR.kDA, VM.k1, true);
  static const kScheduledProcedureStepEndTime = const DeIdElement(0x00400005, "kScheduledProcedureStepEndTime", VR.kTM, VM.k1, true);
  static const kScheduledPerformingPhysicianName = const DeIdElement(0x00400006, "kScheduledPerformingPhysicianName", VR.kPN, VM.k1, true);
  static const kScheduledProcedureStepDescription = const DeIdElement(0x00400007, "kScheduledProcedureStepDescription", VR.kLO, VM.k1, true);
  static const kScheduledPerformingPhysicianIdentificationSequence = const DeIdElement(0x0040000b, "kScheduledPerformingPhysicianIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kScheduledStationName = const DeIdElement(0x00400010, "kScheduledStationName", VR.kSH, VM.k1_n, false);
  static const kScheduledProcedureStepLocation = const DeIdElement(0x00400011, "kScheduledProcedureStepLocation", VR.kSH, VM.k1, true);
  static const kPreMedication = const DeIdElement(0x00400012, "kPreMedication", VR.kLO, VM.k1, true);
  static const kPerformedStationAETitle = const DeIdElement(0x00400241, "kPerformedStationAETitle", VR.kAE, VM.k1, true);
  static const kPerformedStationName = const DeIdElement(0x00400242, "kPerformedStationName", VR.kSH, VM.k1, true);
  static const kPerformedLocation = const DeIdElement(0x00400243, "kPerformedLocation", VR.kSH, VM.k1, true);
  static const kPerformedProcedureStepStartDate = const DeIdElement(0x00400244, "kPerformedProcedureStepStartDate", VR.kDA, VM.k1, true);
  static const kPerformedProcedureStepStartTime = const DeIdElement(0x00400245, "kPerformedProcedureStepStartTime", VR.kTM, VM.k1, true);
  static const kPerformedProcedureStepEndDate = const DeIdElement(0x00400250, "kPerformedProcedureStepEndDate", VR.kDA, VM.k1, true);
  static const kPerformedProcedureStepEndTime = const DeIdElement(0x00400251, "kPerformedProcedureStepEndTime", VR.kTM, VM.k1, true);
  static const kPerformedProcedureStepID = const DeIdElement(0x00400253, "kPerformedProcedureStepID", VR.kSH, VM.k1, true);
  static const kPerformedProcedureStepDescription = const DeIdElement(0x00400254, "kPerformedProcedureStepDescription", VR.kLO, VM.k1, true);
  static const kRequestAttributesSequence = const DeIdElement(0x00400275, "kRequestAttributesSequence", VR.kSQ, VM.k1, true);
  static const kCommentsOnThePerformedProcedureStep = const DeIdElement(0x00400280, "kCommentsOnThePerformedProcedureStep", VR.kST, VM.k1, true);
  static const kAcquisitionContextSequence = const DeIdElement(0x00400555, "kAcquisitionContextSequence", VR.kSQ, VM.k1, true);
  static const kRequestedProcedureID = const DeIdElement(0x00401001, "kRequestedProcedureID", VR.kSH, VM.k1, true);
  static const kPatientTransportArrangements = const DeIdElement(0x00401004, "kPatientTransportArrangements", VR.kLO, VM.k1, true);
  static const kRequestedProcedureLocation = const DeIdElement(0x00401005, "kRequestedProcedureLocation", VR.kLO, VM.k1, true);
  static const kNamesOfIntendedRecipientsOfResults = const DeIdElement(0x00401010, "kNamesOfIntendedRecipientsOfResults", VR.kPN, VM.k1_n, false);
  static const kIntendedRecipientsOfResultsIdentificationSequence = const DeIdElement(0x00401011, "kIntendedRecipientsOfResultsIdentificationSequence", VR.kSQ, VM.k1, true);
  static const kPersonIdentificationCodeSequence = const DeIdElement(0x00401101, "kPersonIdentificationCodeSequence", VR.kSQ, VM.k1, true);
  static const kPersonAddress = const DeIdElement(0x00401102, "kPersonAddress", VR.kST, VM.k1, true);
  static const kPersonTelephoneNumbers = const DeIdElement(0x00401103, "kPersonTelephoneNumbers", VR.kLO, VM.k1_n, false);
  static const kRequestedProcedureComments = const DeIdElement(0x00401400, "kRequestedProcedureComments", VR.kLT, VM.k1, true);
  static const kReasonForTheImagingServiceRequest = const DeIdElement(0x00402001, "kReasonForTheImagingServiceRequest", VR.kLO, VM.k1, true);
  static const kOrderEnteredBy = const DeIdElement(0x00402008, "kOrderEnteredBy", VR.kPN, VM.k1, true);
  static const kOrderEntererLocation = const DeIdElement(0x00402009, "kOrderEntererLocation", VR.kSH, VM.k1, true);
  static const kOrderCallbackPhoneNumber = const DeIdElement(0x00402010, "kOrderCallbackPhoneNumber", VR.kSH, VM.k1, true);
  static const kPlacerOrderNumberImagingServiceRequest = const DeIdElement(0x00402016, "kPlacerOrderNumberImagingServiceRequest", VR.kLO, VM.k1, true);
  static const kFillerOrderNumberImagingServiceRequest = const DeIdElement(0x00402017, "kFillerOrderNumberImagingServiceRequest", VR.kLO, VM.k1, true);
  static const kImagingServiceRequestComments = const DeIdElement(0x00402400, "kImagingServiceRequestComments", VR.kLT, VM.k1, true);
  static const kConfidentialityConstraintOnPatientDataDescription = const DeIdElement(0x00403001, "kConfidentialityConstraintOnPatientDataDescription", VR.kLO, VM.k1, true);
  static const kScheduledProcedureStepStartDateTime = const DeIdElement(0x00404005, "kScheduledProcedureStepStartDateTime", VR.kDT, VM.k1, true);
  static const kScheduledProcedureStepModificationDateTime = const DeIdElement(0x00404010, "kScheduledProcedureStepModificationDateTime", VR.kDT, VM.k1, true);
  static const kExpectedCompletionDateTime = const DeIdElement(0x00404011, "kExpectedCompletionDateTime", VR.kDT, VM.k1, true);
  static const kReferencedGeneralPurposeScheduledProcedureStepTransactionUID = const DeIdElement(0x00404023, "kReferencedGeneralPurposeScheduledProcedureStepTransactionUID", VR.kUI, VM.k1, true);
  static const kScheduledStationNameCodeSequence = const DeIdElement(0x00404025, "kScheduledStationNameCodeSequence", VR.kSQ, VM.k1, true);
  static const kScheduledStationGeographicLocationCodeSequence = const DeIdElement(0x00404027, "kScheduledStationGeographicLocationCodeSequence", VR.kSQ, VM.k1, true);
  static const kPerformedStationNameCodeSequence = const DeIdElement(0x00404028, "kPerformedStationNameCodeSequence", VR.kSQ, VM.k1, true);
  static const kPerformedStationGeographicLocationCodeSequence = const DeIdElement(0x00404030, "kPerformedStationGeographicLocationCodeSequence", VR.kSQ, VM.k1, true);
  static const kScheduledHumanPerformersSequence = const DeIdElement(0x00404034, "kScheduledHumanPerformersSequence", VR.kSQ, VM.k1, true);
  static const kActualHumanPerformersSequence = const DeIdElement(0x00404035, "kActualHumanPerformersSequence", VR.kSQ, VM.k1, true);
  static const kHumanPerformerOrganization = const DeIdElement(0x00404036, "kHumanPerformerOrganization", VR.kLO, VM.k1, true);
  static const kHumanPerformerName = const DeIdElement(0x00404037, "kHumanPerformerName", VR.kPN, VM.k1, true);
  static const kPerformedProcedureStepStartDateTime = const DeIdElement(0x00404050, "kPerformedProcedureStepStartDateTime", VR.kDT, VM.k1, true);
  static const kPerformedProcedureStepEndDateTime = const DeIdElement(0x00404051, "kPerformedProcedureStepEndDateTime", VR.kDT, VM.k1, true);
  static const kProcedureStepCancellationDateTime = const DeIdElement(0x00404052, "kProcedureStepCancellationDateTime", VR.kDT, VM.k1, true);
  static const kVerifyingOrganization = const DeIdElement(0x0040a027, "kVerifyingOrganization", VR.kLO, VM.k1, true);
  static const kVerifyingObserverSequence = const DeIdElement(0x0040a073, "kVerifyingObserverSequence", VR.kSQ, VM.k1, true);
  static const kVerifyingObserverName = const DeIdElement(0x0040a075, "kVerifyingObserverName", VR.kPN, VM.k1, true);
  static const kAuthorObserverSequence = const DeIdElement(0x0040a078, "kAuthorObserverSequence", VR.kSQ, VM.k1, true);
  static const kParticipantSequence = const DeIdElement(0x0040a07a, "kParticipantSequence", VR.kSQ, VM.k1, true);
  static const kCustodialOrganizationSequence = const DeIdElement(0x0040a07c, "kCustodialOrganizationSequence", VR.kSQ, VM.k1, true);
  static const kVerifyingObserverIdentificationCodeSequence = const DeIdElement(0x0040a088, "kVerifyingObserverIdentificationCodeSequence", VR.kSQ, VM.k1, true);
  static const kPersonName = const DeIdElement(0x0040a123, "kPersonName", VR.kPN, VM.k1, true);
  static const kUID = const DeIdElement(0x0040a124, "kUID", VR.kUI, VM.k1, true);
  static const kObservationUID = const DeIdElement(0x0040a171, "kObservationUID", VR.kUI, VM.k1, true);
  static const kReferencedObservationUIDTrial = const DeIdElement(0x0040a172, "kReferencedObservationUIDTrial", VR.kUI, VM.k1, true);
  static const kObservationDateTrial = const DeIdElement(0x0040a192, "kObservationDateTrial", VR.kDA, VM.k1, true);
  static const kObservationTimeTrial = const DeIdElement(0x0040a193, "kObservationTimeTrial", VR.kTM, VM.k1, true);
  static const kCurrentObserverTrial = const DeIdElement(0x0040a307, "kCurrentObserverTrial", VR.kPN, VM.k1, true);
  static const kVerbalSourceTrial = const DeIdElement(0x0040a352, "kVerbalSourceTrial", VR.kPN, VM.k1, true);
  static const kAddressTrial = const DeIdElement(0x0040a353, "kAddressTrial", VR.kST, VM.k1, true);
  static const kTelephoneNumberTrial = const DeIdElement(0x0040a354, "kTelephoneNumberTrial", VR.kLO, VM.k1, true);
  static const kVerbalSourceIdentifierCodeSequenceTrial = const DeIdElement(0x0040a358, "kVerbalSourceIdentifierCodeSequenceTrial", VR.kSQ, VM.k1, true);
  static const kObservationSubjectUIDTrial = const DeIdElement(0x0040a402, "kObservationSubjectUIDTrial", VR.kUI, VM.k1, true);
  static const kContentSequence = const DeIdElement(0x0040a730, "kContentSequence", VR.kSQ, VM.k1, true);
  static const kTemplateExtensionOrganizationUID = const DeIdElement(0x0040db0c, "kTemplateExtensionOrganizationUID", VR.kUI, VM.k1, true);
  static const kTemplateExtensionCreatorUID = const DeIdElement(0x0040db0d, "kTemplateExtensionCreatorUID", VR.kUI, VM.k1, true);
  static const kGraphicAnnotationSequence = const DeIdElement(0x00700001, "kGraphicAnnotationSequence", VR.kSQ, VM.k1, true);
  static const kContentCreatorName = const DeIdElement(0x00700084, "kContentCreatorName", VR.kPN, VM.k1, true);
  static const kContentCreatorIdentificationCodeSequence = const DeIdElement(0x00700086, "kContentCreatorIdentificationCodeSequence", VR.kSQ, VM.k1, true);
  static const kFiducialUID = const DeIdElement(0x0070031a, "kFiducialUID", VR.kUI, VM.k1, true);
  static const kStorageMediaFileSetUID = const DeIdElement(0x00880140, "kStorageMediaFileSetUID", VR.kUI, VM.k1, true);
  static const kIconImageSequence = const DeIdElement(0x00880200, "kIconImageSequence", VR.kSQ, VM.k1, true);
  static const kTopicTitle = const DeIdElement(0x00880904, "kTopicTitle", VR.kLO, VM.k1, true);
  static const kTopicSubject = const DeIdElement(0x00880906, "kTopicSubject", VR.kST, VM.k1, true);
  static const kTopicAuthor = const DeIdElement(0x00880910, "kTopicAuthor", VR.kLO, VM.k1, true);
  static const kTopicKeywords = const DeIdElement(0x00880912, "kTopicKeywords", VR.kLO, VM.k1_32, false);
  static const kDigitalSignatureUID = const DeIdElement(0x04000100, "kDigitalSignatureUID", VR.kUI, VM.k1, true);
  static const kReferencedDigitalSignatureSequence = const DeIdElement(0x04000402, "kReferencedDigitalSignatureSequence", VR.kSQ, VM.k1, true);
  static const kReferencedSOPInstanceMACSequence = const DeIdElement(0x04000403, "kReferencedSOPInstanceMACSequence", VR.kSQ, VM.k1, true);
  static const kMAC = const DeIdElement(0x04000404, "kMAC", VR.kOB, VM.k1, true);
  static const kModifiedAttributesSequence = const DeIdElement(0x04000550, "kModifiedAttributesSequence", VR.kSQ, VM.k1, true);
  static const kOriginalAttributesSequence = const DeIdElement(0x04000561, "kOriginalAttributesSequence", VR.kSQ, VM.k1, true);
  static const kTextString = const DeIdElement(0x20300020, "kTextString", VR.kLO, VM.k1, true);
  static const kReferencedFrameOfReferenceUID = const DeIdElement(0x30060024, "kReferencedFrameOfReferenceUID", VR.kUI, VM.k1, true);
  static const kRelatedFrameOfReferenceUID = const DeIdElement(0x300600c2, "kRelatedFrameOfReferenceUID", VR.kUI, VM.k1, true);
  static const kSourceSerialNumber = const DeIdElement(0x30080105, "kSourceSerialNumber", VR.kLO, VM.k1, true);
  static const kDoseReferenceUID = const DeIdElement(0x300a0013, "kDoseReferenceUID", VR.kUI, VM.k1, true);
  static const kReviewerName = const DeIdElement(0x300e0008, "kReviewerName", VR.kPN, VM.k1, true);
  static const kArbitrary = const DeIdElement(0x40000010, "kArbitrary", VR.kLT, VM.k1, true);
  static const kTextComments = const DeIdElement(0x40004000, "kTextComments", VR.kLT, VM.k1, true);
  static const kResultsIDIssuer = const DeIdElement(0x40080042, "kResultsIDIssuer", VR.kLO, VM.k1, true);
  static const kInterpretationRecorder = const DeIdElement(0x40080102, "kInterpretationRecorder", VR.kPN, VM.k1, true);
  static const kInterpretationTranscriber = const DeIdElement(0x4008010a, "kInterpretationTranscriber", VR.kPN, VM.k1, true);
  static const kInterpretationText = const DeIdElement(0x4008010b, "kInterpretationText", VR.kST, VM.k1, true);
  static const kInterpretationAuthor = const DeIdElement(0x4008010c, "kInterpretationAuthor", VR.kPN, VM.k1, true);
  static const kInterpretationApproverSequence = const DeIdElement(0x40080111, "kInterpretationApproverSequence", VR.kSQ, VM.k1, true);
  static const kPhysicianApprovingInterpretation = const DeIdElement(0x40080114, "kPhysicianApprovingInterpretation", VR.kPN, VM.k1, true);
  static const kInterpretationDiagnosisDescription = const DeIdElement(0x40080115, "kInterpretationDiagnosisDescription", VR.kLT, VM.k1, true);
  static const kResultsDistributionListSequence = const DeIdElement(0x40080118, "kResultsDistributionListSequence", VR.kSQ, VM.k1, true);
  static const kDistributionName = const DeIdElement(0x40080119, "kDistributionName", VR.kPN, VM.k1, true);
  static const kDistributionAddress = const DeIdElement(0x4008011a, "kDistributionAddress", VR.kLO, VM.k1, true);
  static const kInterpretationIDIssuer = const DeIdElement(0x40080202, "kInterpretationIDIssuer", VR.kLO, VM.k1, true);
  static const kImpressions = const DeIdElement(0x40080300, "kImpressions", VR.kST, VM.k1, true);
  static const kResultsComments = const DeIdElement(0x40084000, "kResultsComments", VR.kST, VM.k1, true);
  static const kDigitalSignaturesSequence = const DeIdElement(0xfffafffa, "kDigitalSignaturesSequence", VR.kSQ, VM.k1, true);
  static const kDataSetTrailingPadding = const DeIdElement(0xfffcfffc, "kDataSetTrailingPadding", VR.kOB, VM.k1, true);

}
