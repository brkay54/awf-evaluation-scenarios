# Autonomous Urban Driving Scenario Catalog

## Objective

Our goal is to enable Autoware to navigate urban traffic environments comfortably and safely at low speeds. To achieve
this, we have created a comprehensive scenario catalog that addresses various urban driving conditions. These scenarios
will help ensure Autoware can handle complex and unpredictable traffic situations effectively.

## Scenario Coverage

The scenarios encompass a wide range of urban traffic conditions, including:

- **Vehicles deviating from designated lanes:** Scenarios where vehicles move outside their lanelets and encroach on
  adjacent lanelets.
- **Ambiguous traffic rules:** Situations where traffic regulations are not clearly defined, such as intersections
  without traffic lights or right-of-way signs.
- **High presence of vulnerable road users:** Areas with a significant number of pedestrians, cyclists, and other
  non-motorized road users.
- **Areas without pedestrian infrastructure:** Locations lacking dedicated pedestrian crossings, bike paths, or
  sidewalks, yet are actively used by pedestrians.
- **Bidirectional traffic roads:** Roads that accommodate traffic flowing in both directions.
- **One-way roads with oncoming traffic:** One-way streets where there is a possibility of encountering vehicles coming
  from the opposite direction.

In these scenarios, we aim for Autoware to navigate without straying from the road, avoid unnecessary delays, and make
correct and safe decisions.

### Example Scenarios:

1. **One-way street with oncoming vehicle:** The ego vehicle moves in the correct direction on a one-way street while
   another vehicle approaches from the opposite direction, outside the lanelet. The ego vehicle recognizes that there
   isn't enough space for both to pass side by side and waits at an appropriate spot.

2. **One-way street with sufficient passing space:** The ego vehicle moves correctly on a one-way street, and an
   oncoming vehicle approaches outside the lanelet. The ego vehicle safely slows down and moves to the side, allowing
   both vehicles to pass each other without stopping.

3. **Navigating through pedestrian-dense areas:** The ego vehicle drives through an area crowded with pedestrians. The
   lanelet is too narrow for the ego vehicle to pass the pedestrians safely. The ego vehicle follows the pedestrians at
   a safe distance until there is enough space to overtake them slowly and safely.

4. **Overtaking pedestrians with oncoming traffic:** The ego vehicle intends to overtake pedestrians but notices an
   oncoming vehicle. It proceeds slowly, leaving enough space for the oncoming vehicle to pass. When conditions allow,
   the ego vehicle safely overtakes the pedestrians and continues its journey.

5. **Cyclist interaction:** A cyclist is riding along the side of the road outside the lanelet. There is enough space
   for the ego vehicle to overtake the cyclist. However, as the ego vehicle attempts to overtake, the cyclist starts
   moving towards the road. The ego vehicle slows down and follows the cyclist at a safe distance until it is safe to
   overtake.

## Scenario Categories

The current scenario catalog is organized into the following sections:

### 1. No Traffic Rules (NTR)

- **Features:**
    - Areas where traffic rules are not clearly defined.
    - Scenarios where other traffic participants do not fully comply with traffic regulations.
    - Intersections without traffic lights or right-of-way signs.
    - Erroneous overtaking by other drivers.

### 2. Vulnerable Road Users (VRU)

- **Features:**
    - Scenarios involving pedestrians, cyclists, and motorized vehicles.
    - Dangerous situations arising from the unpredictable movements of these users.

### 3. Dense Urban (DU)

- **Features:**
    - Areas with a high density of all types of traffic participants.
    - Crowded environments.
    - Ambiguous right-of-way situations requiring yielding to other users.

### 4. Emergency (EM)

## Key Features for Autoware

To handle these scenarios, Autoware must be equipped with the following capabilities:

- **Robust lane detection and adherence:** Ability to recognize and stay within lanelets, even when other vehicles
  deviate.
- **Decision-making in ambiguous environments:** Capability to navigate intersections and roads where traffic rules are
  not well-defined.
- **Safe interaction with vulnerable road users:** Recognize and respond appropriately to pedestrians, cyclists, and
  other non-motorized users.
- **Efficient navigation in crowded areas:** Ability to move through dense urban environments without unnecessary
  delays.
- **Dynamic response to oncoming traffic:** Safely navigate one-way streets and handle situations with vehicles coming
  from the opposite direction.

By addressing these scenarios and enhancing these features, we aim to make Autoware a reliable and safe solution for
autonomous urban driving.
