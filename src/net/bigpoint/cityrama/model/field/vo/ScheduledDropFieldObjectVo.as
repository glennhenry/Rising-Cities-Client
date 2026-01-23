package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class ScheduledDropFieldObjectVo extends SpecialFieldObjectVo
   {
      
      private var _playAnimation:Boolean;
      
      private var _isAnimationPlaying:Boolean;
      
      public function ScheduledDropFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      override public function get isHarvestReady() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(!(_loc5_ && Boolean(this)))
         {
            if(_buildingDTO)
            {
               addr0030:
               var _loc2_:int = 0;
               var _loc3_:* = _buildingDTO.activePhases;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(!(_loc4_ || Boolean(_loc2_)))
                     {
                        continue;
                     }
                     §§push(Boolean(_loc1_));
                     if(!_loc5_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr0083:
                                 §§pop();
                                 if(_loc5_ && Boolean(_loc2_))
                                 {
                                    continue;
                                 }
                                 §§push(_loc1_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    addr00ad:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§push(_loc1_.timeLeft);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() == 0);
                                          if(_loc4_)
                                          {
                                             var _temp_8:* = §§pop();
                                             addr00d3:
                                             §§push(_temp_8);
                                             if(!_temp_8)
                                             {
                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                {
                                                   addr00f2:
                                                   §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr00fd:
                                                      addr00f9:
                                                      §§push(_loc1_.expirationTime <= currentTimeStamp);
                                                      if(_loc5_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr0107:
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      addr0112:
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr0107);
                                          }
                                          §§goto(addr00f2);
                                       }
                                       §§goto(addr00fd);
                                    }
                                    §§goto(addr00f9);
                                 }
                              }
                              §§goto(addr0107);
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0112);
               §§push(true);
            }
            return false;
         }
         §§goto(addr0030);
      }
      
      public function get playAnimation() : Boolean
      {
         return this._playAnimation;
      }
      
      public function set playAnimation(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._playAnimation = param1;
         }
      }
      
      public function get isAnimationPlaying() : Boolean
      {
         return this._isAnimationPlaying;
      }
      
      public function set isAnimationPlaying(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            this._isAnimationPlaying = param1;
         }
      }
      
      public function get tagType() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(configPlayfieldItemVo)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  if(configPlayfieldItemVo.tags.indexOf(ServerTagConstants.CHRISTMAS_TREE) != -1)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        addr0055:
                        §§push(ServerTagConstants.CHRISTMAS_TREE);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0091:
                        return ServerTagConstants.CLIENT_OLYMPIC_STADIUM;
                     }
                     return §§pop();
                  }
                  if(configPlayfieldItemVo.tags.indexOf(ServerTagConstants.CLIENT_OLYMPIC_STADIUM) != -1)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0091);
            }
            addr0097:
            return "";
         }
         §§goto(addr0055);
      }
      
      override public function get isConnectedToStreet() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this.tagType != ServerTagConstants.CHRISTMAS_TREE)
            {
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr0041);
               }
            }
            return true;
         }
         addr0041:
         return super.isConnectedToStreet;
      }
   }
}

