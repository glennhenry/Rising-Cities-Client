package net.bigpoint.cityrama.constants.quest
{
   public class QuestGFXIDLayerConstants
   {
      
      public static const TUTORIALREWARD:Number = 51022;
      
      public static const INTRODUCTION:Number = 51021;
      
      public static const FEATURE_NEEDS:Number = 51033;
      
      public static const FEATURE_PERMISSIONS:Number = 51034;
      
      public static const FEATURE_BALANCE:Number = 51040;
      
      public static const INFRASTRUCTURE_INTRODUCTION_EDUCATION:Number = 50050;
      
      public static const INFRASTRUCTURE_INTRODUCTION:Number = 50044;
      
      public static const INFRASTRUCTURE_INTRODUCTION_KAIDEN:Number = 50045;
      
      public static const INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS:Number = 50047;
      
      public static const INFRASTRUCTURE_INTRODUCTION_POLICE:Number = 50067;
      
      public static const INFRASTRUCTURE_INTRODUCTION_POLICECHIEF:Number = 50068;
      
      public static const CHARACTER_SARIKA_INTRODUCTION:Number = 50114;
      
      public static const INFRASTRUCTURE_FEATURE_SECURITY_DEVICES:Number = 50049;
      
      public static const INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE:Number = 50048;
      
      public static const INFRASTRUCTURE_FEATURE_SECURITY_GRADES:Number = 50046;
      
      public static const IMPROVEMENT_FEATURE_BOOSTERPACKS:Number = 50091;
      
      public static const IMPROVEMENT_FEATURE_MANAGEMENT_LAYER:Number = 50092;
      
      public static const IMPROVEMENT_FEATURE_CURSOR_MODE:Number = 50093;
      
      public static const IMPROVEMENT_FEATURE_EFFECTS:Number = 50094;
      
      public static const BIG_FEATURE_CAPITALISTS:Number = 50113;
      
      public static const BIG_FEATURE_PRODUCTION_POINTS:Number = 51041;
      
      public static const BIG_FEATURE_PF2_BRIDGE:Number = 50120;
      
      public static const BIG_FEATURE_PF2_COASTAL_BUILDINGS:Number = 50121;
      
      public static const BIG_FEATURE_SUBLEVEL:Number = 50127;
      
      public static const BIG_FEATURE_MASTERY:Number = 50132;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && QuestGFXIDLayerConstants))
      {
         TUTORIALREWARD = 51022;
         if(!(_loc2_ && _loc2_))
         {
            INTRODUCTION = 51021;
            if(!(_loc2_ && QuestGFXIDLayerConstants))
            {
               FEATURE_NEEDS = 51033;
               if(_loc1_)
               {
                  FEATURE_PERMISSIONS = 51034;
                  if(!(_loc2_ && QuestGFXIDLayerConstants))
                  {
                     FEATURE_BALANCE = 51040;
                     if(!_loc2_)
                     {
                        INFRASTRUCTURE_INTRODUCTION_EDUCATION = 50050;
                        if(!_loc2_)
                        {
                           INFRASTRUCTURE_INTRODUCTION = 50044;
                           if(!_loc2_)
                           {
                              INFRASTRUCTURE_INTRODUCTION_KAIDEN = 50045;
                              if(_loc1_)
                              {
                                 INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS = 50047;
                                 if(!_loc2_)
                                 {
                                    addr00b0:
                                    INFRASTRUCTURE_INTRODUCTION_POLICE = 50067;
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr00cf:
                                       INFRASTRUCTURE_INTRODUCTION_POLICECHIEF = 50068;
                                       if(_loc1_)
                                       {
                                          addr00dc:
                                          CHARACTER_SARIKA_INTRODUCTION = 50114;
                                          if(_loc1_ || QuestGFXIDLayerConstants)
                                          {
                                             INFRASTRUCTURE_FEATURE_SECURITY_DEVICES = 50049;
                                             if(_loc1_)
                                             {
                                                addr0100:
                                                INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE = 50048;
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr010d);
                                                }
                                                §§goto(addr0142);
                                             }
                                             §§goto(addr0150);
                                          }
                                          §§goto(addr0142);
                                       }
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr0176);
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr0176);
               }
               addr010d:
               INFRASTRUCTURE_FEATURE_SECURITY_GRADES = 50046;
               if(_loc1_)
               {
                  IMPROVEMENT_FEATURE_BOOSTERPACKS = 50091;
                  if(_loc1_)
                  {
                     IMPROVEMENT_FEATURE_MANAGEMENT_LAYER = 50092;
                     if(_loc1_)
                     {
                        addr0134:
                        IMPROVEMENT_FEATURE_CURSOR_MODE = 50093;
                        if(!_loc2_)
                        {
                           addr0142:
                           IMPROVEMENT_FEATURE_EFFECTS = 50094;
                           if(!_loc2_)
                           {
                              addr0150:
                              BIG_FEATURE_CAPITALISTS = 50113;
                              if(!_loc2_)
                              {
                                 §§goto(addr015e);
                              }
                           }
                           §§goto(addr01a8);
                        }
                        §§goto(addr0176);
                     }
                     addr015e:
                     BIG_FEATURE_PRODUCTION_POINTS = 51041;
                     if(!_loc2_)
                     {
                        addr0176:
                        BIG_FEATURE_PF2_BRIDGE = 50120;
                        if(!_loc2_)
                        {
                           BIG_FEATURE_PF2_COASTAL_BUILDINGS = 50121;
                           if(_loc1_ || QuestGFXIDLayerConstants)
                           {
                              addr019a:
                              BIG_FEATURE_SUBLEVEL = 50127;
                              if(!_loc2_)
                              {
                                 addr01a8:
                                 BIG_FEATURE_MASTERY = 50132;
                              }
                           }
                           §§goto(addr01b1);
                        }
                        §§goto(addr019a);
                     }
                     §§goto(addr01b1);
                  }
                  §§goto(addr0134);
               }
               addr01b1:
               return;
            }
         }
         §§goto(addr0134);
      }
      §§goto(addr0142);
      
      public function QuestGFXIDLayerConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
   }
}

