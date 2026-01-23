package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class SpecificPlayfieldItemUiInfolayerContentVo extends PlayfieldItemUiInfolayerContentVo
   {
      
      private var _modifiedValues:SpecificPlayfieldItemModifiedValueVo;
      
      private var _emergencyFeatureDisabled:Boolean;
      
      private var _emergencyRunning:Boolean;
      
      public function SpecificPlayfieldItemUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigPlayfieldItemDTO, param4:MasteryChallengeDTO = null, param5:String = "", param6:Number = 0, param7:SpecificPlayfieldItemModifiedValueVo = null)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
            if(!_loc9_)
            {
               this._modifiedValues = param7;
            }
         }
      }
      
      public function set emergencyFeatureDisabled(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._emergencyFeatureDisabled = param1;
         }
      }
      
      public function set emergencyRunning(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._emergencyRunning = param1;
         }
      }
      
      public function get baseharvestOutput() : ConfigOutputDTO
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._modifiedValues);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr0045);
                  }
               }
               §§goto(addr0049);
            }
            addr0045:
            return this._modifiedValues.modBaseHarvestOutput;
         }
         addr0049:
         return super.infoLayerConfigPlayfieldItemVo.baseharvestOutput;
      }
      
      public function get timerCycle() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._modifiedValues);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr003d);
                  }
               }
               §§goto(addr0041);
            }
            addr003d:
            return this._modifiedValues.modTimerCycle;
         }
         addr0041:
         return super.infoLayerConfigPlayfieldItemVo.timerCycle;
      }
      
      override public function get isReward() : Boolean
      {
         return true;
      }
      
      public function get moodValue() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._modifiedValues);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr002c);
                  }
               }
               §§goto(addr0030);
            }
            addr002c:
            return this._modifiedValues.modMoodValue;
         }
         addr0030:
         return super.infoLayerConfigPlayfieldItemVo.moodValue;
      }
      
      public function get energyValue() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._modifiedValues);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr003d);
                  }
               }
               §§goto(addr0041);
            }
            addr003d:
            return this._modifiedValues.modEnergyValue;
         }
         addr0041:
         return super.infoLayerConfigPlayfieldItemVo.energyValue;
      }
      
      override public function get headerIconDynaVo() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.setHeaderIconType();
         }
         return super.headerIconDynaVo;
      }
      
      override public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return new Vector.<ConfigSecurityGradeDTO>();
      }
      
      override public function get specialText() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.isEmergencyItem);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._emergencyRunning);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 if(_loc1_)
                                 {
                                    addr0058:
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.emergencyDevice.blocked"));
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr0092:
                                          §§push(this.isEmergencyItem);
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§push(§§pop());
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr00b1:
                                                var _temp_7:* = §§pop();
                                                addr00b2:
                                                §§push(_temp_7);
                                                if(_temp_7)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      addr00bb:
                                                      §§pop();
                                                      if(_loc1_)
                                                      {
                                                         addr00d5:
                                                         §§push(this._emergencyFeatureDisabled);
                                                         if(!_loc2_)
                                                         {
                                                            addr00d4:
                                                            §§push(§§pop());
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               addr00e6:
                                                               §§push(LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.emergencyDevice.deactivated"));
                                                               if(_loc1_)
                                                               {
                                                                  §§goto(addr00f7);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr00f8:
                                                               return super.specialText;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr00f8);
                                                      }
                                                      §§goto(addr00e6);
                                                   }
                                                   §§goto(addr00d4);
                                                }
                                             }
                                             §§goto(addr00d5);
                                          }
                                          §§goto(addr00d4);
                                       }
                                       addr00f7:
                                       return §§pop();
                                    }
                                    §§goto(addr0092);
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0058);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00bb);
            }
            §§goto(addr0058);
         }
         §§goto(addr0092);
      }
      
      public function get isHarvestReady() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._modifiedValues);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr004e:
                     §§push(this._modifiedValues.harvestReady);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0057:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr0057);
            }
            §§goto(addr004e);
         }
         §§goto(addr0057);
      }
      
      private function get isEmergencyItem() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:* = _data.tags;
         while(true)
         {
            if(!(§§hasnext(_loc3_,_loc2_)))
            {
               return false;
            }
         }
         return §§pop();
      }
      
      private function setHeaderIconType() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.isEmergencyItem);
            if(_loc1_ || Boolean(this))
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || Boolean(this))
                        {
                           §§pop();
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this._emergencyFeatureDisabled);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    addr007a:
                                    var _temp_7:* = §§pop();
                                    addr007b:
                                    §§push(_temp_7);
                                    if(!_temp_7)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00e7:
                                             §§push(this._emergencyRunning);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00a3:
                                                §§push(§§pop());
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   addr00b1:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                                                         if(!_loc2_)
                                                         {
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   addr00e3:
                                                   §§push(this.isHarvestReady);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
                                                }
                                             }
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr00e3);
                                       }
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr00b1);
                           }
                           addr00fc:
                           return;
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr00a3);
            }
            §§goto(addr00e7);
         }
         §§goto(addr00e3);
      }
   }
}

