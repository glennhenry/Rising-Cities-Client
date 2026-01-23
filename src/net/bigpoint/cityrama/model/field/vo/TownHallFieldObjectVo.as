package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class TownHallFieldObjectVo extends SpecialFieldObjectVo
   {
      
      private var _fakeAnimationForQuest:String;
      
      public function TownHallFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super(param1);
         }
      }
      
      public function get fakeAnimationForQuest() : String
      {
         return this._fakeAnimationForQuest;
      }
      
      public function set fakeAnimationForQuest(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._fakeAnimationForQuest = param1;
         }
      }
      
      override public function set userInteractionLocked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.userInteractionLocked = param1;
         }
      }
      
      override public function get isHarvestReady() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(!_loc4_)
         {
            if(_buildingDTO)
            {
               §§goto(addr0027);
            }
            return false;
         }
         addr0027:
         var _loc2_:int = 0;
         var _loc3_:* = _buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || Boolean(this))
               {
                  §§push(Boolean(_loc1_));
                  if(!_loc4_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              §§push(_loc1_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                              if(_loc5_)
                              {
                                 addr008a:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(_loc1_.timeLeft);
                                    if(_loc5_ || Boolean(this))
                                    {
                                       §§push(§§pop() == 0);
                                       if(!_loc4_)
                                       {
                                          addr00b7:
                                          var _temp_6:* = §§pop();
                                          addr00b8:
                                          §§push(_temp_6);
                                          if(!_temp_6)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr00ca:
                                                §§pop();
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   addr00ea:
                                                   addr00e6:
                                                   §§push(_loc1_.expirationTime <= currentTimeStamp);
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr00f4:
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc5_ || Boolean(_loc2_)))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§push(true);
                                             }
                                             break;
                                          }
                                       }
                                       §§goto(addr00f4);
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr00e6);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr00e6);
            }
         }
         return §§pop();
      }
      
      override public function get activePhases() : Vector.<PhaseDTO>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:PhaseDTO = null;
         var _loc1_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         var _loc3_:int = 0;
         for each(_loc2_ in _buildingDTO.activePhases)
         {
            if(_loc5_ || Boolean(_loc3_))
            {
               if(_loc2_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     _loc1_.unshift(_loc2_);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                     }
                  }
               }
               else
               {
                  _loc1_.push(_loc2_);
               }
            }
         }
         return _loc1_;
      }
      
      override public function isReadyForUpgrade() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.isHarvestReady);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(false);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0051:
                     §§push(super.isReadyForUpgrade());
                  }
                  §§goto(addr0056);
               }
               §§goto(addr0051);
            }
            addr0056:
            return §§pop();
         }
         §§goto(addr0051);
      }
   }
}

