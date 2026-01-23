package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectSecuritygradeListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BuildingConstructionStepsComponent;
   import net.bigpoint.cityrama.view.common.components.BuildingCostComponent;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ArchitectTemplate_SecurityBuilding extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_SecurityBuilding";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ArchitectTemplate_SecurityBuilding";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1976000313constructionStepsComponent:BuildingConstructionStepsComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _713468034effectHeader:PostitHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var _224099944securityFeatureButton:DynamicImageButton;
      
      private var _1027222035securityHeader:PostitHeaderComponent;
      
      private var _807992318securityList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_SecurityBuilding()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  §§goto(addr0041);
               }
               §§goto(addr005f);
            }
            addr0041:
            this.percentWidth = 100;
            if(_loc1_)
            {
               addr004b:
               this.percentHeight = 100;
               if(_loc1_)
               {
                  addr005f:
                  this.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_HGroup1_c(),this._ArchitectTemplate_SecurityBuilding_Group2_c(),this._ArchitectTemplate_SecurityBuilding_VGroup2_c(),this._ArchitectTemplate_SecurityBuilding_Group3_c()];
                  if(!(_loc2_ && _loc1_))
                  {
                     this.addEventListener("creationComplete",this.___ArchitectTemplate_SecurityBuilding_Group1_creationComplete);
                  }
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0054);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0054:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            this.effectHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(_loc4_)
            {
               this.securityHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.securitygrade");
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§push(this.buildNowButton);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                     if(!_loc3_)
                     {
                        addr0084:
                        this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr00a6:
                           this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                           addr00a2:
                           if(!(_loc3_ && _loc3_))
                           {
                              this.restrictionFeatureButton.visible = this.restrictionFeatureButton.includeInLayout = false;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.setupCenter();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.updateAll();
                                 }
                              }
                           }
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00a2);
            }
            addr0104:
            return;
         }
         §§goto(addr0084);
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      private function handleEffectFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleSecuritygradeFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event("securitygradeFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._data = param1.bluePrintVO;
            if(!(_loc2_ && _loc2_))
            {
               this._veryData = param1;
               if(!_loc2_)
               {
                  addr004b:
                  invalidateProperties();
               }
               return;
            }
         }
         §§goto(addr004b);
      }
      
      private function updateAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(_loc2_)
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(!_loc1_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc2_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.restrictionGfx);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this._veryData);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc2_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(!_loc1_)
                                       {
                                          §§push(this._veryData);
                                          if(!_loc1_)
                                          {
                                             addr00b9:
                                             §§push(§§pop().buildableLandVO);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§push(§§pop().visualName);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr00ed);
                                                   }
                                                   §§goto(addr00f4);
                                                }
                                                addr00ed:
                                                this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                §§goto(addr00eb);
                                             }
                                             addr00eb:
                                             §§goto(addr00e8);
                                          }
                                          addr00e8:
                                       }
                                       §§goto(addr00e4);
                                    }
                                    §§goto(addr01bc);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00eb);
                           }
                           §§goto(addr00b9);
                        }
                        addr00e4:
                        §§goto(addr00e0);
                     }
                     §§goto(addr00f4);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0137);
               }
               §§goto(addr019f);
            }
            addr00e0:
            if(_loc2_)
            {
               addr00f4:
               this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
               if(!_loc1_)
               {
                  §§push(this.restrictionGroup);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(true);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().visible = §§pop();
                        if(_loc2_)
                        {
                           addr013f:
                           §§push(this._data);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(§§pop().state);
                              if(_loc2_)
                              {
                                 §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       var _temp_13:* = §§pop();
                                       §§push(_temp_13);
                                       if(!_temp_13)
                                       {
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             §§pop();
                                             if(_loc2_)
                                             {
                                                §§push(this._data);
                                                if(!_loc1_)
                                                {
                                                   addr01a5:
                                                   addr019f:
                                                   addr019c:
                                                   §§push(§§pop().state == BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                   if(!_loc1_)
                                                   {
                                                      addr01ab:
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            addr01bc:
                                                            §§push(this.costComponent);
                                                            if(!_loc1_)
                                                            {
                                                               §§push("noCosts");
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  §§pop().currentState = §§pop();
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(this.costComponent);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr01e6:
                                                                        §§pop().invalidateProperties();
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           addr0232:
                                                                           addr0239:
                                                                           addr0236:
                                                                           if(!this._data.hasConstructionSteps)
                                                                           {
                                                                              if(!(_loc1_ && Boolean(this)))
                                                                              {
                                                                                 addr024a:
                                                                                 §§push(this.constructionStepsComponent);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push("noSteps");
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§pop().currentState = §§pop();
                                                                                       if(!(_loc2_ || _loc2_))
                                                                                       {
                                                                                          this.constructionStepsComponent.setData(this._veryData.materialVOList);
                                                                                          addr028b:
                                                                                          addr028f:
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             §§goto(addr02a9);
                                                                                          }
                                                                                          §§goto(addr02cf);
                                                                                       }
                                                                                       addr02a9:
                                                                                       this.setEffects();
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          addr02bc:
                                                                                          this.securityList.dataProvider = this._veryData.securityVoList;
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr02cf:
                                                                                             this.setTooltips();
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02d5);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr027b:
                                                                                       §§pop().currentState = §§pop();
                                                                                       if(!(_loc1_ && Boolean(this)))
                                                                                       {
                                                                                          §§goto(addr028b);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02d5);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0278:
                                                                                    §§push("hasSteps");
                                                                                 }
                                                                                 §§goto(addr027b);
                                                                              }
                                                                              §§goto(addr02a9);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.constructionStepsComponent);
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§goto(addr0278);
                                                                              }
                                                                           }
                                                                           §§goto(addr028f);
                                                                        }
                                                                        §§goto(addr024a);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0206:
                                                                        §§pop().currentState = "hasCosts";
                                                                        addr0203:
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           addr021a:
                                                                           this.costComponent.setData(this._veryData.costVOList);
                                                                           addr0216:
                                                                           if(!(_loc1_ && Boolean(this)))
                                                                           {
                                                                              §§goto(addr0232);
                                                                           }
                                                                           §§goto(addr028b);
                                                                        }
                                                                     }
                                                                     §§goto(addr02d5);
                                                                  }
                                                                  §§goto(addr02a9);
                                                               }
                                                               §§goto(addr0206);
                                                            }
                                                            §§goto(addr01e6);
                                                         }
                                                         §§goto(addr02bc);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.costComponent);
                                                         if(!_loc1_)
                                                         {
                                                            §§goto(addr0203);
                                                         }
                                                      }
                                                      §§goto(addr021a);
                                                   }
                                                   §§goto(addr0239);
                                                }
                                                §§goto(addr0236);
                                             }
                                             §§goto(addr02a9);
                                          }
                                       }
                                       §§goto(addr01ab);
                                    }
                                    §§goto(addr0239);
                                 }
                                 §§goto(addr01a5);
                              }
                              §§goto(addr019f);
                           }
                           §§goto(addr019c);
                        }
                        §§goto(addr0216);
                     }
                     else
                     {
                        addr0138:
                        §§pop().visible = §§pop();
                        if(!_loc1_)
                        {
                           §§goto(addr013f);
                        }
                     }
                     §§goto(addr02bc);
                  }
                  else
                  {
                     addr0137:
                     §§push(false);
                  }
                  §§goto(addr0138);
               }
               §§goto(addr02a9);
            }
            addr02d5:
            return;
         }
         §§goto(addr02a9);
      }
      
      private function setEffects() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:BlueprintImageValueVO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._veryData.consequenceVOList.source;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(_loc1_.effectType);
               if(_loc4_)
               {
                  if(§§pop() == "")
                  {
                     continue;
                  }
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc1_.effectType);
                     if(!_loc5_)
                     {
                        addr006c:
                        §§push(MainLayerProxy.ENERGY);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(this.energyIcon);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push(_loc1_.visualName);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(!_loc5_)
                                       {
                                          addr00d3:
                                          this.energyIcon.dynaLibName = _loc1_.visualLibName;
                                          addr00cf:
                                          addr00be:
                                          if(!(_loc4_ || Boolean(_loc2_)))
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(this.energyLabel);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§pop().setStyle("color",_loc1_.valueColor);
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          §§push(this.energyLabel);
                                       }
                                       §§pop().text = _loc1_.textLabel;
                                       if(_loc4_)
                                       {
                                       }
                                       continue;
                                    }
                                    §§goto(addr00d3);
                                 }
                                 §§goto(addr00cf);
                              }
                              else
                              {
                                 addr0169:
                                 §§push(this.moodIcon);
                              }
                           }
                           else
                           {
                              addr0123:
                              addr011d:
                              if(_loc1_.effectType != MainLayerProxy.MOOD)
                              {
                                 continue;
                              }
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(this.moodIcon);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§push(_loc1_.visualName);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr0169);
                                    }
                                    addr01ad:
                                    this.moodLabel.text = _loc1_.textLabel;
                                    addr01a9:
                                    continue;
                                 }
                                 addr0171:
                                 §§pop().dynaLibName = §§pop();
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 §§push(this.moodLabel);
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    §§pop().setStyle("color",_loc1_.valueColor);
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr01a9);
                                 }
                                 §§goto(addr01ad);
                              }
                           }
                           §§goto(addr0171);
                           §§push(_loc1_.visualLibName);
                        }
                        §§goto(addr0123);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr006c);
            }
            §§goto(addr00be);
         }
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._veryData = param1;
            if(_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function get data() : BlueprintVo
      {
         return this._data;
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.center);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push("tooltipLeftScroll");
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0087:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr0086:
                        addr0083:
                        if(_loc4_)
                        {
                           this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                           if(_loc4_)
                           {
                              this.energyGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
                              if(_loc4_ || _loc2_)
                              {
                                 this.moodGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
                                 if(!_loc3_)
                                 {
                                    addr00e7:
                                    §§push(this._data);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop().permissionBuyable);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             if(_temp_7)
                                             {
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   addr0111:
                                                   §§pop();
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr0135:
                                                      addr0123:
                                                      §§push(this._data.locked);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr0134:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr013e:
                                                            this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               this.securityFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.securityRanges");
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  addr0187:
                                                                  this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                               }
                                                               §§goto(addr0198);
                                                            }
                                                         }
                                                         §§goto(addr0187);
                                                      }
                                                      §§goto(addr013e);
                                                   }
                                                   §§goto(addr0187);
                                                }
                                                §§goto(addr0134);
                                             }
                                             §§goto(addr0135);
                                          }
                                          §§goto(addr0111);
                                       }
                                       §§goto(addr0134);
                                    }
                                    §§goto(addr0123);
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr00e7);
                           }
                           §§goto(addr013e);
                        }
                     }
                     addr0198:
                     return;
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0086);
            }
            §§goto(addr0083);
         }
         §§goto(addr013e);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               this.setupCenter();
               if(_loc2_ || Boolean(this))
               {
                  addr003d:
                  this.setTooltips();
                  if(!_loc1_)
                  {
                     addr0048:
                     this.updateAll();
                  }
               }
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr003d);
      }
      
      private function setupCenter() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(this._data);
            if(_loc4_)
            {
               §§push(§§pop().state);
               if(_loc4_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(this.buildNowButton);
                           if(_loc4_ || _loc1_)
                           {
                              §§push(true);
                              if(_loc4_ || Boolean(this))
                              {
                                 §§pop().enabled = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(this.buildNowButton);
                                             if(!_loc5_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(!_loc5_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push("");
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 var _temp_12:* = §§pop();
                                                                                 §§push(_temp_12);
                                                                                 §§push(_temp_12);
                                                                                 if(!(_loc5_ && Boolean(this)))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!(_loc5_ && _loc1_))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr0196:
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc5_ && _loc1_)
                                                                                                {
                                                                                                }
                                                                                                addr0397:
                                                                                                §§push(this.buildNowButton);
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr03a9:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      addr03bb:
                                                                                                      §§push(Boolean(§§pop().enabled));
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         var _temp_20:* = §§pop();
                                                                                                         §§push(_temp_20);
                                                                                                         §§push(_temp_20);
                                                                                                         if(!(_loc5_ && Boolean(this)))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr03ed:
                                                                                                                     §§push(this._data);
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().locked);
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           addr0410:
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(!(_loc5_ && _loc1_))
                                                                                                                           {
                                                                                                                              addr041f:
                                                                                                                              §§pop().enabled = §§pop();
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 addr0428:
                                                                                                                                 §§push(this.buildNowButton);
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr043a:
                                                                                                                                    §§push(this._data);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr0444:
                                                                                                                                       §§push(§§pop().userCanAfford);
                                                                                                                                       if(_loc4_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr045c:
                                                                                                                                             var _temp_28:* = §§pop();
                                                                                                                                             §§push(_temp_28);
                                                                                                                                             §§push(_temp_28);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr0463:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr046d:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!(_loc5_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr047c:
                                                                                                                                                         addr0480:
                                                                                                                                                         §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr0492:
                                                                                                                                                            var _temp_31:* = §§pop();
                                                                                                                                                            addr0493:
                                                                                                                                                            §§push(_temp_31);
                                                                                                                                                            if(_temp_31)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr04a5:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr04c3:
                                                                                                                                                                  addr04a6:
                                                                                                                                                                  addr04aa:
                                                                                                                                                                  addr04ad:
                                                                                                                                                                  §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                  if(_loc4_ || Boolean(this))
                                                                                                                                                                  {
                                                                                                                                                                     addr04c2:
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().showPlus = §§pop();
                                                                                                                                                                  addr04c6:
                                                                                                                                                                  var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                  var _loc2_:Boolean = false;
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this._data);
                                                                                                                                                                     if(!(_loc5_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().permissionBuyable);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0502:
                                                                                                                                                                                 if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr052a:
                                                                                                                                                                                       _loc2_ = true;
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0531);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr053f);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr0531:
                                                                                                                                                                           _loc1_.blueprintVO = this._data;
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr053f:
                                                                                                                                                                              this.center.data = _loc1_;
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr052a);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0502);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr053f);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04c2);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04c3);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04a6);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04a5);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0492);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0493);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr04a5);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04aa);
                                                                                                                                 }
                                                                                                                                 §§goto(addr047c);
                                                                                                                              }
                                                                                                                              §§goto(addr04c6);
                                                                                                                           }
                                                                                                                           §§goto(addr04c2);
                                                                                                                        }
                                                                                                                        §§goto(addr046d);
                                                                                                                     }
                                                                                                                     §§goto(addr0444);
                                                                                                                  }
                                                                                                                  §§goto(addr043a);
                                                                                                               }
                                                                                                               §§goto(addr04c3);
                                                                                                            }
                                                                                                            §§goto(addr041f);
                                                                                                         }
                                                                                                         §§goto(addr0463);
                                                                                                      }
                                                                                                      §§goto(addr0492);
                                                                                                   }
                                                                                                   §§goto(addr0480);
                                                                                                }
                                                                                                §§goto(addr03ed);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr024b:
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(this._data);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().state);
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(!(_loc5_ && Boolean(this)))
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr02a0:
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr02aa:
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!(_loc5_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           addr02c4:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              addr02ce:
                                                                                                                              §§push(true);
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr02e6:
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(_loc4_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          addr0309:
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0397);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr038f:
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0397);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0428);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr035c:
                                                                                                                                       §§push(false);
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop().showSparkle = §§pop();
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr036c:
                                                                                                                                             §§push(this.buildNowButton);
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr0376:
                                                                                                                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr038f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04ad);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03ed);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04c6);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr045c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0397);
                                                                                                                              }
                                                                                                                              §§goto(addr045c);
                                                                                                                           }
                                                                                                                           §§goto(addr0376);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr034a:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(_loc4_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§goto(addr035c);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr03a9);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0341:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr034a);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0428);
                                                                                                                  }
                                                                                                                  §§goto(addr035c);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0322:
                                                                                                               addr031c:
                                                                                                               addr0319:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr032c:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr0341);
                                                                                                                        §§push("layer_cc_icon");
                                                                                                                     }
                                                                                                                     §§goto(addr043a);
                                                                                                                  }
                                                                                                                  §§goto(addr0428);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0397);
                                                                                                         }
                                                                                                         §§goto(addr0322);
                                                                                                      }
                                                                                                      §§goto(addr031c);
                                                                                                   }
                                                                                                   §§goto(addr0319);
                                                                                                }
                                                                                                §§goto(addr036c);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr04ad);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr024a:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr024b);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0247:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr024a);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0246:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0247);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0245:
                                                                                 var _temp_43:* = §§pop();
                                                                                 §§push(_temp_43);
                                                                                 §§push(_temp_43);
                                                                              }
                                                                              §§goto(addr0246);
                                                                           }
                                                                           §§goto(addr0480);
                                                                        }
                                                                        §§goto(addr0376);
                                                                     }
                                                                     §§goto(addr04c6);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr021e:
                                                                     §§pop().libNameRight = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§goto(addr0245);
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr03bb);
                                                                        }
                                                                        §§goto(addr035c);
                                                                     }
                                                                  }
                                                                  §§goto(addr02c4);
                                                               }
                                                               §§goto(addr03a9);
                                                            }
                                                            §§goto(addr02a0);
                                                         }
                                                         §§goto(addr0341);
                                                      }
                                                      §§goto(addr02ce);
                                                   }
                                                   §§goto(addr04c6);
                                                }
                                                §§goto(addr0196);
                                             }
                                             §§goto(addr03ed);
                                          }
                                          §§goto(addr0428);
                                       }
                                       §§goto(addr0309);
                                    }
                                    else
                                    {
                                       addr01b5:
                                       §§push(true);
                                       if(_loc4_)
                                       {
                                          §§pop().enabled = §§pop();
                                          if(!_loc5_)
                                          {
                                             addr01c5:
                                             §§push(this.buildNowButton);
                                             if(!(_loc5_ && Boolean(_loc1_)))
                                             {
                                                §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().label = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push("gui_resources_icons");
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§goto(addr021e);
                                                         }
                                                         §§goto(addr0341);
                                                      }
                                                      §§goto(addr035c);
                                                   }
                                                   §§goto(addr02e6);
                                                }
                                                §§goto(addr04ad);
                                             }
                                             §§goto(addr035c);
                                          }
                                          §§goto(addr0397);
                                       }
                                    }
                                    §§goto(addr04c3);
                                 }
                                 §§goto(addr04c6);
                              }
                              §§goto(addr0410);
                           }
                           §§goto(addr02aa);
                        }
                        §§goto(addr032c);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(!_loc5_)
                        {
                           §§goto(addr01b5);
                        }
                     }
                     §§goto(addr043a);
                  }
                  §§goto(addr0322);
               }
               §§goto(addr031c);
            }
            §§goto(addr0319);
         }
         §§goto(addr01c5);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 25;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.top = -9;
                        if(_loc2_)
                        {
                           addr0096:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_LocaLabel1_i()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00b2:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0096);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxWidth = 690;
            if(_loc3_ || _loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.styleName = "flavorText";
                  if(!_loc2_)
                  {
                     addr005f:
                     _loc1_.id = "flavorText";
                     if(_loc3_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr008b);
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr006a);
            }
            addr008b:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0094:
               this.flavorText = _loc1_;
               if(!_loc2_)
               {
                  BindingManager.executeBindings(this,"flavorText",this.flavorText);
               }
            }
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 240;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 300;
               if(!_loc3_)
               {
                  _loc1_.left = 4;
                  addr003c:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.bottom = 10;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_StickyNoteComponent1_i(),this._ArchitectTemplate_SecurityBuilding_BuildingCostComponent1_i(),this._ArchitectTemplate_SecurityBuilding_BuildingConstructionStepsComponent1_i()];
                        addr0067:
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00aa:
                                 _loc1_.document = this;
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0067);
            }
            §§goto(addr003c);
         }
         §§goto(addr0067);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_StickyNoteComponent1_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 226;
            if(!_loc3_)
            {
               _loc1_.top = 88;
               if(_loc2_)
               {
                  §§goto(addr003c);
               }
               §§goto(addr006c);
            }
         }
         addr003c:
         _loc1_.height = 120;
         if(_loc2_ || _loc2_)
         {
            _loc1_.left = 8;
            if(!(_loc3_ && _loc3_))
            {
               addr006c:
               _loc1_.visible = false;
               if(_loc2_)
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_SecurityBuilding_Array4_c);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "restrictionGroup";
                     if(!_loc3_)
                     {
                        addr009d:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00b1:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr00cd);
                              }
                           }
                           §§goto(addr00df);
                        }
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr009d);
            }
            §§goto(addr00b1);
         }
         addr00cd:
         this.restrictionGroup = _loc1_;
         if(_loc2_ || _loc2_)
         {
            addr00df:
            BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_Array4_c() : Array
      {
         return [this._ArchitectTemplate_SecurityBuilding_DynamicImageButton1_i(),this._ArchitectTemplate_SecurityBuilding_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_SecurityBuilding_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc3_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "restrictionFeatureButton";
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr008f);
                     }
                     addr0083:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr008f:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0098);
                           }
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr008f);
            }
            addr0098:
            this.restrictionFeatureButton = _loc1_;
            if(_loc2_)
            {
               addr00a2:
               BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
            }
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_SecurityBuilding_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0045:
               _loc1_.top = 9;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_PostitHeaderComponent1_i(),this._ArchitectTemplate_SecurityBuilding_HGroup2_c()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0097);
            }
            addr0083:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0097:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_)
         {
            _loc1_.id = "restrictionHeader";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0066:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr006f:
                        this.restrictionHeader = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0081:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr006f);
            }
            §§goto(addr0066);
         }
         §§goto(addr0081);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "left";
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_BriskImageDynaLib1_i(),this._ArchitectTemplate_SecurityBuilding_LocaLabel2_i()];
                  if(_loc2_)
                  {
                     addr0073:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr0073);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(!_loc2_)
               {
                  _loc1_.id = "restrictionGfx";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0076:
                              this.restrictionGfx = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0080:
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr0076);
               }
               addr008d:
               return _loc1_;
            }
         }
         §§goto(addr0080);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc2_)
            {
               addr002a:
               _loc1_.id = "restrictionName";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr0084);
                     }
                  }
               }
               addr0072:
               this.restrictionName = _loc1_;
               if(!(_loc3_ && _loc3_))
               {
                  addr0084:
                  BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
               }
               §§goto(addr0091);
            }
            addr0091:
            return _loc1_;
         }
         §§goto(addr002a);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.top = 0;
               if(!_loc3_)
               {
                  _loc1_.height = 115;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "costComponent";
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr008a);
                              }
                              §§goto(addr009c);
                           }
                        }
                     }
                     addr008a:
                     this.costComponent = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr009c:
                        BindingManager.executeBindings(this,"costComponent",this.costComponent);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009c);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr009c);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0035);
            }
            §§goto(addr009b);
         }
         addr0035:
         _loc1_.height = 130;
         if(_loc3_ || _loc3_)
         {
            _loc1_.bottom = -10;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "constructionStepsComponent";
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr009b:
                           this.constructionStepsComponent = _loc1_;
                           if(!_loc2_)
                           {
                              addr00a5:
                              BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
                           }
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr00b2);
            }
            §§goto(addr009b);
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 240;
            if(!_loc2_)
            {
               _loc1_.right = 220;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 300;
                  if(_loc3_)
                  {
                     addr0050:
                     _loc1_.bottom = 15;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc3_ || _loc3_)
                        {
                           addr0083:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.gap = 15;
                              if(_loc3_)
                              {
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00d7);
                           }
                           addr00ad:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_DetailsCenterComponent1_i(),this._ArchitectTemplate_SecurityBuilding_MultistateButton1_i()];
                           if(!_loc2_)
                           {
                              addr00c3:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00d7:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00c3);
                  }
                  addr00db:
                  return _loc1_;
               }
               §§goto(addr0050);
            }
            §§goto(addr00ad);
         }
         §§goto(addr0083);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(_loc3_)
         {
            _loc1_.id = "center";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0059:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr0062);
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0062);
            }
            §§goto(addr0059);
         }
         addr0062:
         this.center = _loc1_;
         if(_loc3_ || _loc2_)
         {
            addr0074:
            BindingManager.executeBindings(this,"center",this.center);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(_loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr00a7);
               }
            }
            addr005e:
            _loc1_.id = "buildNowButton";
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0094);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr009d);
            }
            addr0094:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr009d:
               this.buildNowButton = _loc1_;
               if(_loc3_)
               {
                  addr00a7:
                  BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
               }
            }
            return _loc1_;
         }
         §§goto(addr00a7);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 220;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 300;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.right = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr00ad);
               }
            }
            addr006d:
            _loc1_.bottom = 5;
            if(_loc3_)
            {
               addr0083:
               _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_StickyNoteComponent2_c(),this._ArchitectTemplate_SecurityBuilding_Group4_c()];
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr00a1);
               }
               §§goto(addr00ad);
            }
            addr00a1:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr00ad:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.width = 230;
            if(_loc2_)
            {
               _loc1_.right = -4;
               if(_loc2_)
               {
                  _loc1_.top = -5;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.height = 200;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0065:
                        _loc1_.tapeTop = true;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_SecurityBuilding_Array9_c);
                           if(_loc2_ || Boolean(this))
                           {
                              addr00a0:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00b4:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0065);
            }
            §§goto(addr00b4);
         }
         §§goto(addr00a0);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_Array9_c() : Array
      {
         return [this._ArchitectTemplate_SecurityBuilding_VGroup3_c(),this._ArchitectTemplate_SecurityBuilding_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_SecurityBuilding_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.gap = 8;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr007d);
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr0094);
            }
            addr007d:
            _loc1_.paddingTop = 3;
            if(!_loc2_)
            {
               addr0094:
               _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_PostitHeaderComponent2_i(),this._ArchitectTemplate_SecurityBuilding_List1_i()];
               if(!(_loc2_ && _loc3_))
               {
                  addr00b2:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00be:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00be);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr00b2);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "securityHeader";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0052);
                  }
               }
               §§goto(addr005b);
            }
            addr0052:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr005b:
               this.securityHeader = _loc1_;
               if(!_loc2_)
               {
                  BindingManager.executeBindings(this,"securityHeader",this.securityHeader);
               }
            }
            §§goto(addr0072);
         }
         addr0072:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.itemRenderer = this._ArchitectTemplate_SecurityBuilding_ClassFactory1_c();
                  if(!_loc3_)
                  {
                     _loc1_.setStyle("skinClass",ArchitectSecuritygradeListSkin);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr0092);
                  }
                  addr0073:
                  _loc1_.id = "securityList";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0092:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr00b0);
                           }
                           §§goto(addr00c2);
                        }
                     }
                  }
                  §§goto(addr00b0);
               }
            }
         }
         addr00b0:
         this.securityList = _loc1_;
         if(_loc2_ || Boolean(this))
         {
            addr00c2:
            BindingManager.executeBindings(this,"securityList",this.securityList);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || _loc3_)
         {
            _loc1_.generator = ArchitectSecuritygradeRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.top = -10;
                  if(!_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__securityFeatureButton_click);
                     if(!_loc3_)
                     {
                        addr005d:
                        _loc1_.id = "securityFeatureButton";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr009a);
                                 }
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr009a);
                        }
                     }
                     §§goto(addr00ac);
                  }
                  addr009a:
                  this.securityFeatureButton = _loc1_;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00ac:
                     BindingManager.executeBindings(this,"securityFeatureButton",this.securityFeatureButton);
                  }
                  return _loc1_;
               }
               §§goto(addr00ac);
            }
         }
         §§goto(addr005d);
      }
      
      public function __securityFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleSecuritygradeFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_SecurityBuilding_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 235;
            if(!_loc3_)
            {
               _loc1_.bottom = 0;
               if(!_loc3_)
               {
                  _loc1_.right = -2;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_HGroup3_c(),this._ArchitectTemplate_SecurityBuilding_DynamicImageButton3_i()];
                     if(!_loc3_)
                     {
                        addr0077:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr008b:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0077);
               }
            }
         }
         §§goto(addr008b);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_StickyNoteComponent3_i()];
                  if(_loc3_ || _loc2_)
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0072:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0066);
         }
         §§goto(addr0072);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_StickyNoteComponent3_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 120;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  addr0042:
                  _loc1_.tapeLeft = true;
                  if(_loc3_)
                  {
                     _loc1_.tapeRight = true;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_SecurityBuilding_Array13_c);
                        if(_loc3_)
                        {
                           _loc1_.id = "effectsComponent";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00ac:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00b5);
                                    }
                                    §§goto(addr00c7);
                                 }
                              }
                           }
                           addr00b5:
                           this.effectsComponent = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00c7:
                              BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00d4);
                  }
               }
               §§goto(addr00ac);
            }
            §§goto(addr0042);
         }
         addr00d4:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_Array13_c() : Array
      {
         return [this._ArchitectTemplate_SecurityBuilding_PostitHeaderComponent3_i(),this._ArchitectTemplate_SecurityBuilding_HGroup4_c()];
      }
      
      private function _ArchitectTemplate_SecurityBuilding_PostitHeaderComponent3_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr0036);
            }
            §§goto(addr0054);
         }
         addr0036:
         _loc1_.id = "effectHeader";
         if(_loc3_ || _loc2_)
         {
            addr0054:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr008f);
               }
            }
            addr007d:
            this.effectHeader = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr008f:
               BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
            }
            §§goto(addr009c);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = 22;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr004f);
               }
               §§goto(addr00a2);
            }
         }
         addr004f:
         _loc1_.percentHeight = 100;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_HGroup5_i(),this._ArchitectTemplate_SecurityBuilding_HGroup6_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr00a2:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00a6);
            }
            §§goto(addr00a2);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityBuilding_HGroup5_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 50;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_LocaLabel3_i(),this._ArchitectTemplate_SecurityBuilding_BriskImageDynaLib2_i()];
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.id = "moodGroup";
                           if(!_loc3_)
                           {
                              addr0086:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr009e:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00af:
                                       this.moodGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00b9:
                                          BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
                                       }
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr009e);
                        }
                        addr00c6:
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr00af);
         }
         §§goto(addr00b9);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!_loc3_)
            {
               addr0033:
               _loc1_.text = "0";
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0052);
               }
               §§goto(addr005d);
            }
            addr0052:
            _loc1_.id = "moodLabel";
            if(!_loc3_)
            {
               addr005d:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0086:
                        this.moodLabel = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
                        }
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0086);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "layer_sad_icon";
               if(_loc3_)
               {
                  _loc1_.id = "moodIcon";
                  if(!_loc2_)
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr007e);
                           }
                        }
                        §§goto(addr0088);
                     }
                  }
                  addr007e:
                  this.moodIcon = _loc1_;
                  if(!_loc2_)
                  {
                     addr0088:
                     BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
                  }
                  return _loc1_;
               }
               §§goto(addr0069);
            }
            §§goto(addr0075);
         }
         §§goto(addr0069);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_HGroup6_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 50;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  addr003c:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr0063:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityBuilding_LocaLabel4_i(),this._ArchitectTemplate_SecurityBuilding_BriskImageDynaLib3_i()];
                        if(_loc2_)
                        {
                           _loc1_.id = "energyGroup";
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00a4:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00b5:
                                       this.energyGroup = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00bf:
                                          BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                                       }
                                       §§goto(addr00cc);
                                    }
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00b5);
                           }
                        }
                        §§goto(addr00a4);
                     }
                     addr00cc:
                     return _loc1_;
                  }
                  §§goto(addr0063);
               }
               §§goto(addr00b5);
            }
            §§goto(addr003c);
         }
         §§goto(addr00bf);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "outcomeNeutral";
            if(_loc3_)
            {
               _loc1_.text = "0";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "energyLabel";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007e:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008f:
                              this.energyLabel = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0099:
                                 BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr0099);
                        }
                        addr00a6:
                        return _loc1_;
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr007e);
            }
         }
         §§goto(addr005e);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0033:
               _loc1_.dynaBmpSourceName = "energy_icon";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "energyIcon";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr0090:
                              this.energyIcon = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
            §§goto(addr0090);
         }
         §§goto(addr0033);
      }
      
      private function _ArchitectTemplate_SecurityBuilding_DynamicImageButton3_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc2_)
            {
               _loc1_.right = 24;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 15;
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(!_loc2_)
                     {
                        addr0069:
                        _loc1_.id = "effectFeatureButton";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0080:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr009d:
                                    this.effectFeatureButton = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                                    }
                                 }
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr009d);
                        }
                     }
                     addr00bc:
                     return _loc1_;
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0080);
            }
            §§goto(addr00af);
         }
         §§goto(addr0069);
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_SecurityBuilding_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buildNowButton() : MultistateButton
      {
         return this._597326554buildNowButton;
      }
      
      public function set buildNowButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._597326554buildNowButton;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._597326554buildNowButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007f);
               }
            }
            addr008e:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : DetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:DetailsCenterComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1364013995center;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0041:
                  this._1364013995center = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0077);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get constructionStepsComponent() : BuildingConstructionStepsComponent
      {
         return this._1976000313constructionStepsComponent;
      }
      
      public function set constructionStepsComponent(param1:BuildingConstructionStepsComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1976000313constructionStepsComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1976000313constructionStepsComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : BuildingCostComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:BuildingCostComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1253508016costComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1253508016costComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectFeatureButton() : DynamicImageButton
      {
         return this._1768900535effectFeatureButton;
      }
      
      public function set effectFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1768900535effectFeatureButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1768900535effectFeatureButton = param1;
                  addr0047:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectHeader() : PostitHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._713468034effectHeader;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._713468034effectHeader = param1;
                  addr0048:
                  if(_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005e);
            }
            addr0084:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsComponent() : StickyNoteComponent
      {
         return this._911984155effectsComponent;
      }
      
      public function set effectsComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._911984155effectsComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._911984155effectsComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1840699177energyGroup;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004a:
                  this._1840699177energyGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1464688417energyIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0039:
                  this._1464688417energyIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0052);
               }
            }
            addr0061:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1836601012energyLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1836601012energyLabel = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1684755691flavorText = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._899936824moodGroup;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._899936824moodGroup = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodIcon() : BriskImageDynaLib
      {
         return this._306079728moodIcon;
      }
      
      public function set moodIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._306079728moodIcon;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._306079728moodIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr008a);
                  }
               }
               §§goto(addr007b);
            }
            addr008a:
            return;
         }
         §§goto(addr007b);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._895838659moodLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._895838659moodLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr005f);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionFeatureButton() : DynamicImageButton
      {
         return this._188635812restrictionFeatureButton;
      }
      
      public function set restrictionFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._188635812restrictionFeatureButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0042:
                  this._188635812restrictionFeatureButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGfx() : BriskImageDynaLib
      {
         return this._294445069restrictionGfx;
      }
      
      public function set restrictionGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._294445069restrictionGfx;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGroup() : StickyNoteComponent
      {
         return this._505777645restrictionGroup;
      }
      
      public function set restrictionGroup(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._505777645restrictionGroup;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr0046:
                  this._505777645restrictionGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
            addr008c:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionHeader() : PostitHeaderComponent
      {
         return this._1516951929restrictionHeader;
      }
      
      public function set restrictionHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1516951929restrictionHeader;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1516951929restrictionHeader = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionName() : LocaLabel
      {
         return this._538066039restrictionName;
      }
      
      public function set restrictionName(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._538066039restrictionName;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._538066039restrictionName = param1;
                  if(!_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005b);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get securityFeatureButton() : DynamicImageButton
      {
         return this._224099944securityFeatureButton;
      }
      
      public function set securityFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._224099944securityFeatureButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0054:
                  this._224099944securityFeatureButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get securityHeader() : PostitHeaderComponent
      {
         return this._1027222035securityHeader;
      }
      
      public function set securityHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1027222035securityHeader;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1027222035securityHeader = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get securityList() : List
      {
         return this._807992318securityList;
      }
      
      public function set securityList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._807992318securityList;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._807992318securityList = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006c);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityList",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
   }
}

