package net.bigpoint.cityrama.view.residentSelection.ui.components
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.residentSelection.ResidentSelectionEvent;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentChoiceActiveSkin;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentChoiceInactiveSkin;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentChoiceUnknownSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class ResidentChoiceDetailComponent extends SkinnableComponent
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         _skinParts = {
            "infoText":false,
            "levelFeatureButton":false,
            "background":true,
            "actionButton":true,
            "residentType":true,
            "levelAmount":false,
            "currencyIcon":false,
            "needIcon":false,
            "needFeatureButton":false,
            "levelIcon":false,
            "levelGroup":false
         };
      }
      
      public var background:BriskImageDynaLib;
      
      public var residentType:LocaLabel;
      
      public var actionButton:MultistateButton;
      
      public var currencyIcon:BriskImageDynaLib;
      
      public var levelAmount:LocaLabel;
      
      public var infoText:LocaLabel;
      
      public var levelFeatureButton:DynamicImageButton;
      
      public var needFeatureButton:DynamicImageButton;
      
      public var needIcon:BriskImageDynaLib;
      
      public var levelIcon:BriskImageDynaLib;
      
      public var levelGroup:HGroup;
      
      private var _data:ResidentDetailVo;
      
      private var _isDirty:Boolean;
      
      public function ResidentChoiceDetailComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function set data(param1:ResidentDetailVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this._data = param1;
                     if(_loc2_ || Boolean(param1))
                     {
                        this._isDirty = true;
                        if(_loc2_ || Boolean(param1))
                        {
                           addr0070:
                           §§push(this._data);
                           if(_loc2_ || Boolean(param1))
                           {
                              §§push(§§pop().locked);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr0091:
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       setStyle("skinClass",ResidentChoiceUnknownSkin);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00fd:
                                          invalidateProperties();
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00c8:
                                    addr00ba:
                                    if(this._data.movePossible)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          setStyle("skinClass",ResidentChoiceActiveSkin);
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00fd);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       setStyle("skinClass",ResidentChoiceInactiveSkin);
                                       if(_loc2_)
                                       {
                                          §§goto(addr00fd);
                                       }
                                    }
                                 }
                                 §§goto(addr0102);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0102);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr0102);
            }
            §§goto(addr0091);
         }
         addr0102:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc1_)
            {
               §§push(this._data);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(this._isDirty);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop());
                                 if(_loc1_)
                                 {
                                    §§goto(addr006d);
                                 }
                                 §§goto(addr013f);
                              }
                              §§goto(addr006d);
                           }
                           §§goto(addr01b6);
                        }
                        §§goto(addr01dd);
                     }
                     addr006d:
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           this._isDirty = false;
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this.actionButton);
                              if(_loc1_)
                              {
                                 §§pop().label = this._data.buttonText;
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(this.background);
                                    if(_loc1_)
                                    {
                                       §§push(this._data);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          §§push(§§pop().cardBGImage);
                                          if(_loc1_)
                                          {
                                             §§push(§§pop().dynaLibName);
                                             if(!_loc2_)
                                             {
                                                §§pop().dynaLibName = §§pop();
                                                if(!_loc2_)
                                                {
                                                   addr00f2:
                                                   this.background.dynaBmpSourceName = this._data.cardBGImage.dynaBmpName;
                                                   addr00ef:
                                                   addr00eb:
                                                   addr00dd:
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§goto(addr0101);
                                                   }
                                                   §§goto(addr0113);
                                                }
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00ef);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr00dd);
                                 }
                                 addr0101:
                                 this.residentType.text = this._data.residentName;
                                 if(!_loc2_)
                                 {
                                    addr0113:
                                    this.infoText.text = this._data.residentInfoText;
                                    if(!_loc2_)
                                    {
                                       §§push(this._data);
                                       if(_loc1_)
                                       {
                                          §§push(§§pop().locked);
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr013f:
                                             if(!§§pop())
                                             {
                                                if(_loc1_)
                                                {
                                                   addr0148:
                                                   this.levelAmount.text = String(this._data.buildingLevel);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr0167:
                                                      §§push(this.currencyIcon);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§push(this._data);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop().currencyImage);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop().dynaBmpName);
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                  if(_loc1_)
                                                                  {
                                                                     addr01af:
                                                                     this.currencyIcon.dynaLibName = this._data.currencyImage.dynaLibName;
                                                                     addr01ad:
                                                                     addr01a9:
                                                                     addr01a5:
                                                                     addr01a1:
                                                                     if(_loc1_)
                                                                     {
                                                                        this.needFeatureButton.addEventListener(MouseEvent.CLICK,this.onNeedFeatureInfoClick);
                                                                        addr01b6:
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr01d6:
                                                                           addr01dd:
                                                                           addr01da:
                                                                           if(this._data.movePossible)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr01ea:
                                                                                 this.actionButton.addEventListener(MouseEvent.CLICK,this.onActionButtonClicked);
                                                                                 addr01e6:
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr01fc:
                                                                                    this.setTooltips();
                                                                                 }
                                                                              }
                                                                              §§goto(addr0202);
                                                                           }
                                                                           §§goto(addr01fc);
                                                                        }
                                                                     }
                                                                     §§goto(addr01e6);
                                                                  }
                                                                  §§goto(addr01d6);
                                                               }
                                                               §§goto(addr01af);
                                                            }
                                                            §§goto(addr01ad);
                                                         }
                                                         §§goto(addr01a9);
                                                      }
                                                      §§goto(addr01a5);
                                                   }
                                                   §§goto(addr01b6);
                                                }
                                                §§goto(addr01a1);
                                             }
                                             §§goto(addr01fc);
                                          }
                                          §§goto(addr01dd);
                                       }
                                       §§goto(addr01da);
                                    }
                                    §§goto(addr0167);
                                 }
                                 §§goto(addr0202);
                              }
                              §§goto(addr01ea);
                           }
                           §§goto(addr0148);
                        }
                        §§goto(addr0167);
                     }
                     addr0202:
                     return;
                  }
                  §§goto(addr013f);
               }
               §§goto(addr01da);
            }
            §§goto(addr01d6);
         }
         §§goto(addr01b6);
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = null;
         if(!(_loc4_ && _loc3_))
         {
            if(!this._data.locked)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.needFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.feature.needs");
                  if(_loc3_)
                  {
                     this.levelFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.feature.upgrade");
                     if(!_loc4_)
                     {
                        this.needIcon.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.needs");
                        if(_loc3_ || _loc3_)
                        {
                           this.currencyIcon.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.currency",[this._data.currencyName]);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              addr00b5:
                              this.levelIcon.toolTip = LocaUtils.getString("rcl.tooltips.residentSelection","rcl.tooltips.residentSelection.unlock",[this._data.buildingLevel]);
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 addr00de:
                                 this.levelGroup.toolTip = this.levelIcon.toolTip;
                              }
                              addr018e:
                              var _loc2_:* = this._data.type;
                              if(_loc3_)
                              {
                                 §§push(ServerResConst.RESOURCE_WORKERS);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop() === _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(0);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr01e7:
                                          §§push(1);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerResConst.RESOURCE_RICHMEN);
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          if(§§pop() === _loc2_)
                                          {
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§goto(addr01e7);
                                             }
                                             else
                                             {
                                                addr020a:
                                                §§push(2);
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                             §§goto(addr0221);
                                          }
                                          else
                                          {
                                             §§goto(addr0205);
                                          }
                                       }
                                       addr0205:
                                       if(ServerResConst.RESOURCE_ACADEMICS === _loc2_)
                                       {
                                          §§goto(addr020a);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                       §§goto(addr0221);
                                    }
                                    addr0221:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker"));
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc3_ || Boolean(this))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr0144:
                                                §§push(§§pop());
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   addr0152:
                                                   _loc1_ = §§pop();
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr017f:
                                                   _loc1_ = §§pop();
                                                   addr017e:
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             addr0242:
                                             this.background.toolTip = _loc1_;
                                             break;
                                          }
                                          §§goto(addr0152);
                                       case 1:
                                          §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen"));
                                          if(!(_loc4_ && Boolean(_loc1_)))
                                          {
                                             §§goto(addr0144);
                                          }
                                          §§goto(addr0152);
                                       case 2:
                                          §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics"));
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§goto(addr017e);
                                          }
                                          §§goto(addr017f);
                                       default:
                                          §§goto(addr0242);
                                    }
                                    §§goto(addr0249);
                                 }
                                 §§goto(addr0205);
                              }
                              §§goto(addr01e7);
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr018e);
                  }
               }
               §§goto(addr00b5);
            }
            addr0249:
            return;
         }
         §§goto(addr00de);
      }
      
      private function onLevelFeatureClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            dispatchEvent(new ResidentSelectionEvent(ResidentSelectionEvent.OPEN_FEATURE_UPGRADE,true,true));
         }
      }
      
      private function onNeedFeatureInfoClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            dispatchEvent(new ResidentSelectionEvent(ResidentSelectionEvent.OPEN_FEATURE_NEEDS,true,true));
         }
      }
      
      private function onActionButtonClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.actionButton.enabled = false;
         }
         var _loc2_:ResidentSelectionEvent = new ResidentSelectionEvent(ResidentSelectionEvent.RESIDENT_SELECTED,true,true);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.residentType = this._data.type;
            if(_loc3_ || Boolean(_loc2_))
            {
               addr0079:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0079);
      }
   }
}

