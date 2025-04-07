// tasks_data.dart
import 'package:flutter_node_auth/models/task_model.dart';

final List<MajorTask> majorTasks = [
  MajorTask(
    id: '1',
    title: 'Preparation of Building Works',
    subTasks: [
      SubTask(id: '1-1', title: 'Existing Site Scenario'),
      SubTask(id: '1-2', title: 'Site of Proposed Flood Shelter'),
      SubTask(id: '1-3', title: 'Building or Objects to be dismantled'),
      SubTask(id: '1-4', title: 'Connecting Road'),
      SubTask(id: '1-5', title: 'Location of Temporary Tin Shed School'),
      SubTask(id: '1-6', title: 'Location of Labor Shed with Toilet'),
      SubTask(id: '1-7', title: 'Location of Materials Store Room'),
      SubTask(id: '1-8', title: 'Location of site Office with Toilet'),
      SubTask(id: '1-9', title: 'Sub soil Investigation Pictures'),
    ],
  ),
  MajorTask(
    id: '2',
    title: 'Preparation of Road Works',
    subTasks: [
      SubTask(id: '2-1', title: 'Existing Site Scenario with Start and end'),
      SubTask(id: '2-2', title: 'Location of U-Drains/Culverts'),
      SubTask(
        id: '2-3',
        title:
            'Location of Ponds/Khals Low land adjacent to road with palasiding work',
      ),
      SubTask(
        id: '2-4',
        title: 'Line Diagram of Road Katcha or Pacca with chainage',
      ),
      SubTask(
        id: '2-5',
        title:
            'Existing Tree or other obstruction with in Right of way of road',
      ),
      SubTask(id: '2-6', title: 'Possibility to Construct culverts as per'),
    ],
  ),
  MajorTask(
    id: '3',
    title: 'Shelter Site Improvement',
    subTasks: [
      SubTask(id: '3-1', title: 'Pre -- Survey'),
      SubTask(id: '3-2', title: 'Post -- Survey'),
      SubTask(id: '3-3', title: 'Palisading'),
      SubTask(id: '3-4', title: 'Brick guide wall'),
    ],
  ),
  MajorTask(
    id: '4',
    title: 'Site Handover to Contractor',
    subTasks: [
      SubTask(id: '4-1', title: 'No obstacle - Work can start immediately'),
      SubTask(
        id: '4-2',
        title: 'Minor obstacle - (Provide details in Comments)',
      ),
      SubTask(
        id: '4-3',
        title: 'Major obstacle - (Provide details in Comments)',
      ),
    ],
  ),
  MajorTask(
    id: '5',
    title: 'Initial Work',
    subTasks: [
      SubTask(
        id: '5-1',
        title:
            'Initial Work -- Tube well, Toilets, Signboard, Safety Signs, Fencing and Demolition',
      ),
      SubTask(id: '5-2', title: 'Earth excavation and Pile Head breaking'),
      SubTask(id: '5-3', title: 'Development as per EGL and FGL with boundary'),
      SubTask(
        id: '5-4',
        title:
            'Initial Work - Labor Shed, Temporary School, Materials Shed and Site Office',
      ),
      SubTask(id: '5-5', title: 'Providing Layout / Setting Out / Pile Points'),
    ],
  ),
  MajorTask(
    id: '6',
    title: 'Sub Structure',
    subTasks: [
      SubTask(id: '6-1', title: 'Pre -- Cast Pile'),
      SubTask(id: '6-2', title: 'Piling Works -- Boring, Washing and Casting'),
      SubTask(id: '6-3', title: 'Pile Integrity Tests'),
      SubTask(id: '6-4', title: 'Pile Load Tests'),
      SubTask(id: '6-5', title: 'Mass Concrete / CC under the pile cap'),
      SubTask(
        id: '6-6',
        title: 'Shuttering, Laying Reinforcement - Pile Cap and Bracing Beam',
      ),
      SubTask(id: '6-7', title: 'Concreting- Pile Cap and Bracing Beam'),
      SubTask(
        id: '6-8',
        title: 'Curing Work (28 days) - Pile Cap and Bracing Beam',
      ),
      SubTask(
        id: '6-9',
        title:
            'Shuttering, Laying Reinforcements - Pedestal Columns & Grade Beams',
      ),
      SubTask(
        id: '6-10',
        title: 'Concreting- Pedestal Columns and Grade Beams',
      ),
      SubTask(
        id: '6-11',
        title: 'Curing Work (28 days) - Pedestal Columns and Grade Beams',
      ),
      SubTask(
        id: '6-12',
        title: 'Shuttering, Laying Reinforcements -- Underground Water Tank',
      ),
      SubTask(id: '6-13', title: 'Concreting -- Underground Water Tank'),
      SubTask(
        id: '6-14',
        title: 'Curing Work (28 days) -- Underground Water Tank',
      ),
      SubTask(id: '6-15', title: 'Earth / Sand filling'),
      SubTask(id: '6-16', title: 'Compaction'),
    ],
  ),
  MajorTask(
    id: '7',
    title: 'Super Structure Works - GF (Ensure QA tests are performed)',
    subTasks: [
      SubTask(
        id: '7-1',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - GF Columns - 1st Lift, Stair and Ramp',
      ),
      SubTask(
        id: '7-2',
        title: 'Concreting - GF Columns - 1st Lift, Stair and Ramp',
      ),
      SubTask(
        id: '7-3',
        title: 'Curing Work (28 days) - GF Columns - 1st Lift, Stair and Ramp',
      ),
      SubTask(
        id: '7-4',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - GF Columns -2nd Lift, Stair and Ramp',
      ),
      SubTask(
        id: '7-5',
        title: 'Concreting- GF Columns -2nd Lift, Stair and Ramp',
      ),
      SubTask(
        id: '7-6',
        title: 'Curing Work (28 days) - GF Columns -2nd Lift, Stair and Ramp',
      ),
      SubTask(
        id: '7-7',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - GF -- Roof Beams and Slab',
      ),
      SubTask(id: '7-8', title: 'Concreting- GF Roof Beams and Slab'),
      SubTask(
        id: '7-9',
        title: 'Curing Work (28 days) - GF Roof Beams and Slab',
      ),
    ],
  ),
  // Continuing with all remaining tasks...
  MajorTask(
    id: '8',
    title: 'Super Structure Works - FF (Ensure QA tests are performed)',
    subTasks: [
      SubTask(
        id: '8-1',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - 1st Floor Columns - 1st Lift and Stair',
      ),
      SubTask(
        id: '8-2',
        title: 'Concreting- 1st Floor Columns - 1st Lift and Stair',
      ),
      SubTask(
        id: '8-3',
        title: 'Curing Work (28 days) - 1st Floor Columns - 1st Lift and Stair',
      ),
      SubTask(
        id: '8-4',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - 1st Floor Columns - 2nd Lift and Stair',
      ),
      SubTask(
        id: '8-5',
        title: 'Concreting- 1st Floor Columns - 2nd Lift and Stair',
      ),
      SubTask(
        id: '8-6',
        title: 'Curing Work (28 days) - 1st Floor Columns - 2nd Lift and Stair',
      ),
      SubTask(
        id: '8-7',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - FF Roof Beams and Slab',
      ),
      SubTask(id: '8-8', title: 'Concreting- FF Roof Beams and Slab'),
      SubTask(
        id: '8-9',
        title: 'Curing Work (28 days) - FF Roof Beams and Slab',
      ),
    ],
  ),
  MajorTask(
    id: '9',
    title: 'Super Structure Works - SF (Ensure QA tests are performed)',
    subTasks: [
      SubTask(
        id: '9-1',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits -- SF Columns - 1st Lift and Stair',
      ),
      SubTask(id: '9-2', title: 'Concreting- SF Columns - 1st Lift and Stair'),
      SubTask(
        id: '9-3',
        title: 'Curing Work (28 days) -- SF Columns - 1st Lift and Stair',
      ),
      SubTask(
        id: '9-4',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits - SF Columns - 2nd Lift and Stair',
      ),
      SubTask(id: '9-5', title: 'Concreting- SF Columns - 2nd Lift and Stair'),
      SubTask(
        id: '9-6',
        title: 'Curing Work (28 days) -- SF Columns - 2nd Lift and Stair',
      ),
      SubTask(
        id: '9-7',
        title:
            'Shuttering, Laying Reinforcements and electrical conduits -- SF Roof Beams and Slab',
      ),
      SubTask(id: '9-8', title: 'Concreting- SF Roof Beams and Slab'),
      SubTask(
        id: '9-9',
        title: 'Curing Work (28 days) - SF Roof Floor Beams and Slab',
      ),
    ],
  ),
  MajorTask(
    id: '10',
    title: 'Super Structure Works -- Roof (Ensure QA tests are performed)',
    subTasks: [
      SubTask(id: '10-1', title: 'Shuttering Stub Columns for extension'),
      SubTask(id: '10-2', title: 'Concreting- Stub Columns for Extension'),
      SubTask(id: '10-3', title: 'Curing Work (28 days) - Roof Stub Columns'),
      SubTask(id: '10-4', title: 'Concreting- Chilekotha and Overhead Tank'),
      SubTask(
        id: '10-5',
        title: 'Curing Work (28 days) - Chilekotha and Water Tank',
      ),
      SubTask(
        id: '10-6',
        title: 'RCC work for Filter tank and Gazi Water Tanks',
      ),
    ],
  ),
  // Continuing with tasks 11-25...
  MajorTask(
    id: '11',
    title: 'Concrete Works Others',
    subTasks: [
      SubTask(
        id: '11-1',
        title: 'Parapet Walls, Drop Wall, Sunshade, Lintel, Railings',
      ),
      SubTask(
        id: '11-2',
        title:
            'Curing Work (28 days) - Parapet Walls, Drop Wall, Sunshade, Lintel, Railings',
      ),
      SubTask(
        id: '11-3',
        title: 'Ground Floor Slab -- BFS / Laying Reinforcements',
      ),
      SubTask(id: '11-4', title: 'Ground Floor Slab -- Concreting'),
      SubTask(id: '11-5', title: 'Curing Work (28 days) -- Slab'),
    ],
  ),
  MajorTask(
    id: '12',
    title: 'Finishing Works',
    subTasks: [
      SubTask(id: '12-1', title: 'Brick Works'),
      SubTask(id: '12-2', title: 'Windows Grills'),
      SubTask(id: '12-3', title: 'Plumbing Ducting'),
      SubTask(
        id: '12-4',
        title: 'Plastering Works using anti-saline / waterproofing',
      ),
      SubTask(
        id: '12-5',
        title: 'Painting Works -- 3 Coats including Sealer Works',
      ),
      SubTask(
        id: '12-6',
        title: 'Thai Windows, Doors, MS Gates and Collapsible Gate',
      ),
      SubTask(id: '12-7', title: 'Patent Stones Ground Floor and 1st Floor'),
      SubTask(id: '12-8', title: 'Tiles - Toilet - Walls'),
      SubTask(id: '12-9', title: 'Tiles - Toilet -Floor, Stair, 2nd Floor'),
      SubTask(id: '12-10', title: 'All Finishing Tiles Doors and Windows'),
      SubTask(id: '12-11', title: 'Landscaping Works with Internal Road works'),
    ],
  ),
  MajorTask(
    id: '13',
    title: 'Electrical Works',
    subTasks: [
      SubTask(id: '13-1', title: 'Electrical Fittings Approval'),
      SubTask(
        id: '13-2',
        title: 'Electrical Wiring Systems with Earth Protection System',
      ),
      SubTask(id: '13-3', title: 'Solar System Installation Works'),
      SubTask(id: '13-4', title: 'Lights, Fans - Finishing Works'),
      SubTask(id: '13-5', title: 'Electrical / Solar work Certification'),
    ],
  ),
  MajorTask(
    id: '14',
    title: 'Plumbing Works',
    subTasks: [
      SubTask(id: '14-1', title: 'Plumbing Fittings Approval'),
      SubTask(id: '14-2', title: 'Plumbing Certification'),
      SubTask(id: '14-3', title: 'Sanitary - Fixture Finishing Works'),
    ],
  ),
  MajorTask(
    id: '15',
    title: 'Furniture Works',
    subTasks: [
      SubTask(id: '15-1', title: 'Furniture Supply Approval at Head Office'),
      SubTask(id: '15-2', title: 'Furniture Supply Approval at Sites'),
    ],
  ),
  MajorTask(
    id: '16',
    title: 'Road Works',
    subTasks: [
      SubTask(id: '16-1', title: 'Pre - Work'),
      SubTask(
        id: '16-2',
        title: 'External Road Construction Works - Embankment',
      ),
      SubTask(
        id: '16-3',
        title: 'External Road Construction Works -- Pavement Work',
      ),
      SubTask(id: '16-4', title: 'Post Work'),
      SubTask(
        id: '16-5',
        title: 'Palisading Construction Works / Guide Wall / Retaining Walls',
      ),
      SubTask(id: '16-6', title: 'Bridge Construction'),
      SubTask(id: '16-7', title: 'Road Side Palisading'),
      SubTask(id: '16-8', title: 'Culvert Construction Works'),
      SubTask(id: '16-9', title: 'Brick guide wall'),
      SubTask(id: '16-10', title: 'Retaining wall construction'),
      SubTask(id: '16-11', title: 'Embankment improvement'),
      SubTask(id: '16-12', title: 'Community Place Improvement'),
      SubTask(id: '16-13', title: 'Landing Station'),
      SubTask(id: '16-14', title: 'Road Work Widening'),
      SubTask(id: '16-15', title: 'Protective Walls'),
    ],
  ),
  // Continuing with tasks 17-25...
  MajorTask(
    id: '17',
    title: 'Lab Test for Building Works',
    subTasks: [
      SubTask(
        id: '17-1',
        title: 'Slump Test / Workability test for concrete - Field',
      ),
      SubTask(
        id: '17-2',
        title: 'Cylinder Test / Strength test for concrete - 7 days - Lab',
      ),
      SubTask(
        id: '17-3',
        title: 'Cylinder Test / Strength test for concrete - 28 days -- Lab',
      ),
      SubTask(id: '17-4', title: 'Connecting Road'),
      SubTask(id: '17-5', title: 'Bricks - Field and Lab'),
      SubTask(id: '17-6', title: 'Coarse Aggregate - Field and Lab'),
      SubTask(id: '17-7', title: 'Fine Aggregate - Field and Lab'),
      SubTask(id: '17-8', title: 'Cement - Field and Lab'),
      SubTask(id: '17-9', title: 'Reinforcement - Lab'),
      SubTask(id: '17-10', title: 'Bentonite - Lab'),
      SubTask(id: '17-11', title: 'Water -- Salinity - Lab'),
      SubTask(
        id: '17-12',
        title: 'Slurry Test - Density, Viscosity, pH Tests - Lab',
      ),
      SubTask(id: '17-13', title: 'Compaction Test'),
    ],
  ),
  MajorTask(
    id: '18',
    title: 'Lab Test for Road Works',
    subTasks: [
      SubTask(
        id: '18-1',
        title:
            'Road - Fill material - Atterberg limits, Plasticity, Optimum Moisture Content',
      ),
      SubTask(id: '18-2', title: 'Road - Source Approval for Sand'),
      SubTask(id: '18-3', title: 'Road - Source Approval for Stone Aggregate'),
      SubTask(id: '18-4', title: 'Road - Source Approval for Brick'),
      SubTask(id: '18-5', title: 'Road - Source Approval for Bitumen'),
      SubTask(id: '18-6', title: 'Road - Onsite Testing of Sand'),
      SubTask(id: '18-7', title: 'Road - Onsite Testing of Stone Aggregate'),
      SubTask(id: '18-8', title: 'Road - Onsite Testing of Brick'),
      SubTask(id: '18-9', title: 'Road - Onsite Testing of Bitumen'),
      SubTask(id: '18-10', title: 'Road - Compaction Test for each layer'),
      SubTask(
        id: '18-11',
        title: 'Road - Gradation testing for sub base, base',
      ),
      SubTask(
        id: '18-12',
        title: 'Road - CBR test for Sub Grade, ISG, Sub Base, Base',
      ),
      SubTask(
        id: '18-13',
        title: 'Road - Asphalts / Bitumen Workable Temperature Testing',
      ),
    ],
  ),
  MajorTask(
    id: '19',
    title: 'River Training',
    subTasks: [SubTask(id: '19-1', title: 'Training at Headquarter')],
  ),
  MajorTask(
    id: '20',
    title: 'Social Works',
    subTasks: [
      SubTask(id: '20-1', title: 'School Related Aspects'),
      SubTask(id: '20-2', title: 'Laborers Working Condition'),
      SubTask(id: '20-3', title: 'Community Related Issues'),
    ],
  ),
  MajorTask(
    id: '21',
    title: 'Environmental Works',
    subTasks: [
      SubTask(id: '21-1', title: 'Visible Environment Aspect'),
      SubTask(id: '21-2', title: 'Health and Safety Aspect'),
      SubTask(id: '21-3', title: 'Traffic Management Plan'),
    ],
  ),
  MajorTask(
    id: '22',
    title: 'No Work at Site',
    subTasks: [
      SubTask(id: '22-1', title: 'Site Clearance Issues'),
      SubTask(id: '22-2', title: 'Materials Issues'),
      SubTask(id: '22-3', title: 'Machinery Issues'),
      SubTask(id: '22-4', title: 'Labor shortage'),
      SubTask(id: '22-5', title: 'Shuttering shortage'),
      SubTask(id: '22-6', title: 'Timely Approvals from PMU'),
      SubTask(id: '22-7', title: 'Rain Water Ponding'),
      SubTask(id: '22-8', title: 'Design Changes due to Field Condition'),
      SubTask(id: '22-9', title: 'Availability of drawings'),
      SubTask(
        id: '22-10',
        title:
            'Force Majeure - Weather, Earth Quake, Cyclone, Flood, Fire etc.',
      ),
      SubTask(id: '22-11', title: 'Quality of Work / Poor Workmanship'),
      SubTask(id: '22-12', title: 'Festival Vacations'),
      SubTask(
        id: '22-13',
        title: 'Contractor\'s Issue - (Cash flow, Mobilization, Skill)',
      ),
      SubTask(id: '22-14', title: 'Accident at site'),
      SubTask(id: '22-15', title: 'Delay in selecting Piles for PLT'),
    ],
  ),
  MajorTask(
    id: '23',
    title: 'Existing Shelter Repair Works',
    subTasks: [
      SubTask(id: '23-1', title: 'Site Handover to contractor'),
      SubTask(
        id: '23-2',
        title: 'Civil Work -- Dismantling damaged components',
      ),
      SubTask(id: '23-3', title: 'Civil Work - C.C / Soiling'),
      SubTask(id: '23-4', title: 'Civil Work -- Plaster'),
      SubTask(id: '23-5', title: 'Civil Work -- Window / Gate / Grill Repair'),
      SubTask(id: '23-6', title: 'Civil Work -- Water proof concrete in Roof'),
      SubTask(id: '23-7', title: 'Electrical Work -- Surface Wiring'),
      SubTask(id: '23-8', title: 'Electrical Work -- Fitting / Fixtures'),
      SubTask(id: '23-9', title: 'Plumbing and Sanitary Work -- Pipe Wiring'),
      SubTask(
        id: '23-10',
        title: 'Plumbing and Sanitary Work -- Fitting Fixture',
      ),
      SubTask(id: '23-11', title: 'Finishing -- Tiles'),
      SubTask(id: '23-12', title: 'Finishing -- Painting'),
      SubTask(id: '23-13', title: 'Finishing -- NCF'),
      SubTask(id: '23-14', title: 'Ready for Handover to SMC'),
    ],
  ),
  MajorTask(
    id: '24',
    title: 'Materials',
    subTasks: [
      SubTask(id: '24-1', title: 'Shuttering (Only Steel Shutter to be used)'),
      SubTask(id: '24-2', title: 'Reinforcements (Deformed bar as per specs.)'),
      SubTask(id: '24-3', title: 'Stone Chips (19 mm down well grade)'),
      SubTask(
        id: '24-4',
        title: 'Cement OPC (BDS 232 1974) or PCC (ASTM C150)',
      ),
      SubTask(id: '24-5', title: 'Coarse Sand (FM - 2.2 mm)'),
      SubTask(id: '24-6', title: 'Medium Sand (FM 1.2 mm)'),
      SubTask(id: '24-7', title: 'Fine Sand (FM 0.5 mm)'),
      SubTask(id: '24-8', title: 'Bricks - 1st Class'),
      SubTask(id: '24-9', title: 'Brick Chips (Pickets) -- Road'),
      SubTask(id: '24-10', title: 'Admixture - Water reducing'),
      SubTask(id: '24-11', title: 'Non-Saline Water'),
    ],
  ),
  MajorTask(
    id: '25',
    title: 'File Complaints',
    subTasks: [], // Empty subTasks list
  ),
  MajorTask(
    id: '26',
    title: 'RIVER General Meeting',
    subTasks: [
      SubTask(id: '26-1', title: 'Meeting at Headquarter'),
      SubTask(id: '26-2', title: 'Meeting at Upazila Offices (Upazila Office)'),
      SubTask(id: '26-3', title: 'Meeting at shelter'),
      SubTask(id: '26-4', title: 'Meeting at District Offices (XEN Office)'),
    ],
  ),
];
