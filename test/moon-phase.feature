
Feature: mycroft-moon-phase

  Scenario Outline: current moon phase
    Given an english speaking user
      When the user says "<the current moon phase>"
      Then "skill-moon-phase" should reply with "Today’s moon is Waning Crescent with 55% illumination"

   Examples: Asking for the current moon phase
     | the current moon phase |
     | what’s the moon phase |
     | what's the phase of the moon |
     | what is the moon phase today |

  Scenario Outline: when is a moon phase
    Given an english speaking user
      When the user says "<when is the next moon phase>"
      Then "skill-moon-phase" should reply with "The next full moon is on May 7th"

   Examples: Asking for the current moon phase
     | when is the next moon phase |
     | when is the next full moon |
     | when is the full moon |
     | when is full moon |
     | when is the next first quarter moon |
     | when is the first quarter moon |
     | when is first quarter moon |
     | when is the next third quarter moon |
     | when is the third quarter moon |
     | when is third quarter moon |
     | when is the next new moon |
     | when is the new moon |
     | when is new moon |

  Scenario Outline: what is the next principal moon phase
    Given an english speaking user
      When the user says "<what is the next principal moon phase>"
      Then "skill-moon-phase" should reply with "The next principal moon phase is the full moon, on May 7th"

    | what is the next principal moon phase |
    | what is the next moon phase |
    | is the next moon phase a full moon |
    | is the next moon phase a first quarter moon |
    | is the next moon phase a last quarter moon |
    | is the next moon phase a new moon |


  Scenario Outline: what is the moon phase on a date
    Given an english speaking user
      When the user says "<what is the moon phase on a date>"
      Then "skill-moon-phase" should reply with "the moon will be waxing gibbous with 68% illumination on may 2nd"

    | What phase of the moon will it be on may 2nd |
    | what’s the moon phase 5 days from today |
    | what phase of the moon will it be on the 4th of april |
    | what moon phase is it on the 16th of october |
    | on the 4th of july what will the moon phase be |

  Scenario Outline: information on moon phases when the user wants to know more
    Given an english speaking user
      When the user says "<what are the phases of the moon>"
      Then "skill-moon-phase" should reply with "A lunar cycle lasts 29.53 days and consists of four principal phases, the new moon, first quarter, full moon and third quarter. Would you like to know more"
      Then the user says "yes"
      Then "skill-moon-phase" should reply with "The apparent shape of the moon between New Moon and First Quarter is known as Waxing Crescent, the apparent shape between First Quarter and Full Moon is known as Waxing Gibbuous. The moon is half illuminated in both First Quarter and Third Quarter, the use of the word quarter indicates the period within the cycle and not the illumination."


  Scenario Outline: information on moon phases when the user doesn't want to know more
    Given an english speaking user
      When the user says "<what are the phases of the moon>"
      Then "skill-moon-phase" should reply with "A lunar cycle lasts 29.53 days and consists of four principal phases, the new moon, first quarter, full moon and third quarter. Would you like to know more"
      Then the user says "no"
      Then "skill-moon-phase" should reply with "ok"

  Scenario Outline: Help, can you tell me the moon phase for a day
    Given an english speaking user
      When the user says "<can you tell me the moon phase for a certain day>"
      Then "skill-moon-phase" should reply with "yes, what day would you like to know the moon phase?"
      Then the user says "<May 8th>"

  Scenario Outline: Help
    Given an english speaking user
      When the user says "<how do I get information on the moon phases>"
      Then "skill-moon-phase" should reply with "You can ask me what the current moon phase is, the moon phase on a future date, or more information about moon phases"

    | What phase of the moon will it be on may 2nd |
    | what’s the moon phase 5 days from today |
    | what phase of the moon will it be on the 4th of april |
    | what moon phase is it on the 16th of october |
    | on the 4th of july what will the moon phase be |
