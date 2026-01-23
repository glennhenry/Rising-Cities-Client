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
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectImageValueSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectNeedsSkin;
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
   
   public class ArchitectTemplate_Commercial extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Commercial";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NAME = "ArchitectTemplate_Commercial";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1976000313constructionStepsComponent:BuildingConstructionStepsComponent;
      
      private var _967769565consumerHeader:PostitHeaderComponent;
      
      private var _841105996consumerList:List;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _490397341effectsGroup:VGroup;
      
      private var _1961361873effectsHeader:PostitHeaderComponent;
      
      private var _1678527680effectsList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Commercial()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_)
            {
               addr0026:
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     this.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        addr0070:
                        this.mxmlContent = [this._ArchitectTemplate_Commercial_HGroup1_c(),this._ArchitectTemplate_Commercial_Group2_c(),this._ArchitectTemplate_Commercial_VGroup2_c(),this._ArchitectTemplate_Commercial_Group3_c()];
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr009a:
                           this.addEventListener("creationComplete",this.___ArchitectTemplate_Commercial_Group1_creationComplete);
                        }
                     }
                     return;
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0070);
            }
            §§goto(addr009a);
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.buildNowButton);
               if(_loc3_ || Boolean(this))
               {
                  §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                  if(!(_loc4_ && _loc2_))
                  {
                     addr0071:
                     this.consumerHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.consumes");
                     if(_loc3_)
                     {
                        this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                        if(_loc3_)
                        {
                           §§goto(addr00a2);
                        }
                        §§goto(addr00f4);
                     }
                  }
                  §§goto(addr00b5);
               }
               addr00a2:
               this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
               if(!_loc4_)
               {
                  var _temp_4:* = this.restrictionFeatureButton;
                  var _loc2_:Boolean;
                  this.restrictionFeatureButton.visible = _loc2_ = false;
                  _temp_4.enabled = _loc2_;
                  addr00b5:
                  if(_loc3_ || _loc2_)
                  {
                     this.setupCenter();
                     if(!(_loc4_ && _loc3_))
                     {
                        addr00f4:
                        this.updateAll();
                     }
                  }
               }
               return;
            }
            §§goto(addr0071);
         }
         §§goto(addr00f4);
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      private function handleEffectFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._data = param1.bluePrintVO;
            if(!_loc3_)
            {
               addr0032:
               this._veryData = param1;
               if(_loc2_ || _loc2_)
               {
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      private function updateAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(_loc1_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(!(_loc2_ && Boolean(this)))
               {
                  if(§§pop() != "")
                  {
                     if(!_loc2_)
                     {
                        §§push(this.restrictionGfx);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(this._veryData);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc1_ || Boolean(this))
                              {
                                 §§push(§§pop().visualLibName);
                                 if(_loc1_)
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(_loc1_ || Boolean(this))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          §§push(this._veryData);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop().visualName);
                                                if(_loc1_)
                                                {
                                                   addr00e0:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr00f4:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00f2:
                                                      addr00ef:
                                                      addr00eb:
                                                      addr00e7:
                                                      if(_loc1_ || Boolean(this))
                                                      {
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc1_)
                                                         {
                                                            §§push(this.restrictionGroup);
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               §§push(true);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr0158:
                                                                     §§push(this._data);
                                                                     if(_loc1_)
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(_loc1_)
                                                                        {
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 var _temp_13:* = §§pop();
                                                                                 §§push(_temp_13);
                                                                                 if(!_temp_13)
                                                                                 {
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       addr0194:
                                                                                       §§pop();
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(this._data);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr01ac:
                                                                                             addr01a6:
                                                                                             §§push(§§pop().state == BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                addr01b2:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      addr01c3:
                                                                                                      §§push(this.costComponent);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push("noCosts");
                                                                                                         if(_loc1_ || _loc1_)
                                                                                                         {
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§goto(addr01e4);
                                                                                                            }
                                                                                                            §§goto(addr0251);
                                                                                                         }
                                                                                                         §§goto(addr0215);
                                                                                                      }
                                                                                                      §§goto(addr0221);
                                                                                                   }
                                                                                                   addr01e4:
                                                                                                   §§push(this.costComponent);
                                                                                                   if(!(_loc2_ && Boolean(this)))
                                                                                                   {
                                                                                                      §§pop().invalidateProperties();
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr0239);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0215:
                                                                                                      §§pop().currentState = "hasCosts";
                                                                                                      addr0212:
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         addr0221:
                                                                                                         this.costComponent.setData(this._veryData.costVOList);
                                                                                                         if(!(_loc2_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0239:
                                                                                                            addr0240:
                                                                                                            addr023d:
                                                                                                            if(!this._data.hasConstructionSteps)
                                                                                                            {
                                                                                                               if(_loc1_ || _loc2_)
                                                                                                               {
                                                                                                                  addr0251:
                                                                                                                  §§push(this.constructionStepsComponent);
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §§push("noSteps");
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        §§pop().currentState = §§pop();
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           addr02a8:
                                                                                                                           this.effectsList.dataProvider = this._veryData.consequenceVOList;
                                                                                                                           if(_loc1_ || _loc1_)
                                                                                                                           {
                                                                                                                              addr02c3:
                                                                                                                              this.consumerList.dataProvider = this._veryData.outcomeVOList;
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 addr02d6:
                                                                                                                                 this.setTooltips();
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr02dc);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0282:
                                                                                                                        §§pop().currentState = §§pop();
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr028e);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr02c3);
                                                                                                                  }
                                                                                                                  §§goto(addr028e);
                                                                                                               }
                                                                                                               §§goto(addr02d6);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.constructionStepsComponent);
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr0282);
                                                                                                                  §§push("hasSteps");
                                                                                                               }
                                                                                                            }
                                                                                                            addr028e:
                                                                                                            this.constructionStepsComponent.setData(this._veryData.materialVOList);
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               §§goto(addr02a8);
                                                                                                            }
                                                                                                            §§goto(addr02dc);
                                                                                                         }
                                                                                                         §§goto(addr02d6);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr02dc);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.costComponent);
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §§goto(addr0212);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0221);
                                                                                             }
                                                                                             §§goto(addr0240);
                                                                                          }
                                                                                          §§goto(addr023d);
                                                                                       }
                                                                                       §§goto(addr0251);
                                                                                    }
                                                                                    §§goto(addr0240);
                                                                                 }
                                                                                 §§goto(addr01b2);
                                                                              }
                                                                              §§goto(addr0194);
                                                                           }
                                                                           §§goto(addr01ac);
                                                                        }
                                                                        §§goto(addr01a6);
                                                                     }
                                                                     §§goto(addr023d);
                                                                  }
                                                                  §§goto(addr0239);
                                                               }
                                                               else
                                                               {
                                                                  addr0147:
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr0158);
                                                                  }
                                                               }
                                                               addr02dc:
                                                               return;
                                                            }
                                                            addr0146:
                                                            §§push(false);
                                                            §§goto(addr0147);
                                                         }
                                                         §§goto(addr02a8);
                                                      }
                                                      §§goto(addr01c3);
                                                   }
                                                   §§goto(addr0251);
                                                }
                                                §§goto(addr00f4);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00ef);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr00e7);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr02c3);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0146);
               }
               §§goto(addr01a6);
            }
            §§goto(addr01c3);
         }
         §§goto(addr02a8);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._veryData = param1;
            if(!_loc2_)
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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.center);
            if(_loc5_ || _loc2_)
            {
               §§push("tooltipLeftScroll");
               if(_loc5_ || _loc1_)
               {
                  §§push(_loc1_);
                  if(!_loc6_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(_loc5_)
                     {
                        addr008b:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr008a:
                        addr0087:
                     }
                     addr008e:
                     §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.products.arrowLeft"));
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.products.arrowRight"));
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc6_)
                     {
                        this.consumerList.setStyle("tooltipLeft",_loc3_);
                        if(_loc5_)
                        {
                           addr00e2:
                           this.consumerList.setStyle("tooltipRight",_loc4_);
                           if(_loc5_)
                           {
                              addr00f4:
                              this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(this._data);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().permissionBuyable);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          var _temp_7:* = §§pop();
                                          §§push(_temp_7);
                                          if(_temp_7)
                                          {
                                             if(!(_loc6_ && _loc1_))
                                             {
                                                addr0140:
                                                §§pop();
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr015d:
                                                   addr0153:
                                                   addr014f:
                                                   §§push(this._data.locked);
                                                   if(_loc5_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         addr017c:
                                                         this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            addr019b:
                                                            this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr017c);
                                                }
                                                §§goto(addr019b);
                                             }
                                          }
                                          §§goto(addr015d);
                                       }
                                    }
                                    §§goto(addr0140);
                                 }
                                 §§goto(addr0153);
                              }
                              §§goto(addr014f);
                           }
                           §§goto(addr019b);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr008a);
            }
            §§goto(addr0087);
         }
         §§goto(addr008e);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(!(_loc1_ && _loc1_))
            {
               this.setupCenter();
               if(_loc2_)
               {
                  addr0044:
                  this.setTooltips();
                  if(_loc2_ || _loc1_)
                  {
                     this.updateAll();
                  }
               }
               §§goto(addr005d);
            }
            §§goto(addr0044);
         }
         addr005d:
      }
      
      private function setupCenter() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc1_)
         {
            §§push(this._data);
            if(_loc4_)
            {
               §§push(§§pop().state);
               if(_loc4_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           §§push(this.buildNowButton);
                           if(!(_loc5_ && _loc1_))
                           {
                              §§push(true);
                              if(_loc4_ || Boolean(this))
                              {
                                 §§pop().enabled = §§pop();
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc5_)
                                          {
                                             addr00c4:
                                             §§push(this.buildNowButton);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr00d6:
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(!_loc5_)
                                                {
                                                   addr00e7:
                                                   §§pop().toolTip = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0149:
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc4_)
                                                                              {
                                                                                 var _temp_13:* = §§pop();
                                                                                 §§push(_temp_13);
                                                                                 §§push(_temp_13);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc5_ && _loc1_))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr01e6:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      §§push("gui_resources_icons");
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§pop().libNameRight = §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               addr0224:
                                                                                                               §§push(this.buildNowButton);
                                                                                                               if(!(_loc5_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr023a:
                                                                                                                  §§pop().libNameLeft = _loc3_ = "";
                                                                                                                  addr023e:
                                                                                                                  addr023d:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr0246:
                                                                                                                     §§pop().imageNameLeft = §§pop();
                                                                                                                     if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        addr0257:
                                                                                                                        §§push(this._data);
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr0269:
                                                                                                                           §§push(§§pop().state);
                                                                                                                           if(_loc4_ || Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              addr027a:
                                                                                                                              §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                                              if(_loc4_ || _loc1_)
                                                                                                                              {
                                                                                                                                 addr028e:
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(this.buildNowButton);
                                                                                                                                       if(_loc4_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push("dd_button_icon");
                                                                                                                                          if(_loc4_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             addr02c8:
                                                                                                                                             §§pop().imageNameRight = §§pop();
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr02d1:
                                                                                                                                                §§push(this.buildNowButton);
                                                                                                                                                if(!(_loc5_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   addr02e3:
                                                                                                                                                   §§push(true);
                                                                                                                                                   if(_loc4_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      §§pop().showSparkle = §§pop();
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr02fb:
                                                                                                                                                         §§push(this.buildNowButton);
                                                                                                                                                         if(_loc4_ || Boolean(_loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().toolTip = §§pop();
                                                                                                                                                               if(_loc5_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr0349:
                                                                                                                                                                  §§push(this.buildNowButton);
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0356:
                                                                                                                                                                     §§pop().imageNameRight = "layer_cc_icon";
                                                                                                                                                                     addr0353:
                                                                                                                                                                     if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.buildNowButton);
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(false);
                                                                                                                                                                           if(_loc4_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0380);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04a7);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04bb);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03b4);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr040a);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03b4);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03ac);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr040a);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03b4);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04ba);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0353);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03b4);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0356);
                                                                                                                                       }
                                                                                                                                       §§goto(addr044f);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr033f:
                                                                                                                                    addr0339:
                                                                                                                                    addr0336:
                                                                                                                                    if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0349);
                                                                                                                                       }
                                                                                                                                       §§goto(addr043d);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr03b4);
                                                                                                                              }
                                                                                                                              §§goto(addr033f);
                                                                                                                           }
                                                                                                                           §§goto(addr0339);
                                                                                                                        }
                                                                                                                        §§goto(addr0336);
                                                                                                                     }
                                                                                                                     §§goto(addr0349);
                                                                                                                  }
                                                                                                                  §§goto(addr04c2);
                                                                                                                  addr0239:
                                                                                                                  addr0238:
                                                                                                               }
                                                                                                               §§goto(addr0495);
                                                                                                            }
                                                                                                            §§goto(addr03c6);
                                                                                                         }
                                                                                                         §§goto(addr043d);
                                                                                                      }
                                                                                                      §§goto(addr02c8);
                                                                                                   }
                                                                                                   §§goto(addr0353);
                                                                                                }
                                                                                                §§goto(addr03b4);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01d5:
                                                                                                §§pop().label = §§pop();
                                                                                                if(_loc4_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   §§goto(addr01e6);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02d1);
                                                                                          }
                                                                                          §§goto(addr023e);
                                                                                       }
                                                                                       §§goto(addr023d);
                                                                                    }
                                                                                    §§goto(addr023a);
                                                                                 }
                                                                                 §§goto(addr0239);
                                                                              }
                                                                              §§goto(addr0238);
                                                                           }
                                                                           §§goto(addr0495);
                                                                        }
                                                                        §§goto(addr02e3);
                                                                     }
                                                                     §§goto(addr03b4);
                                                                  }
                                                                  §§goto(addr02c8);
                                                               }
                                                               else
                                                               {
                                                                  addr01c2:
                                                                  §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr01d5);
                                                                  }
                                                               }
                                                               §§goto(addr0246);
                                                            }
                                                            §§goto(addr02fb);
                                                         }
                                                         §§goto(addr0356);
                                                      }
                                                      §§goto(addr0491);
                                                   }
                                                   §§goto(addr02d1);
                                                }
                                                §§goto(addr04c2);
                                             }
                                             §§goto(addr0149);
                                          }
                                          §§goto(addr02d1);
                                       }
                                       §§goto(addr00e7);
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr0257);
                              }
                              addr0380:
                              §§pop().showSparkle = §§pop();
                              if(_loc4_ || Boolean(this))
                              {
                                 addr0391:
                                 §§push(this.buildNowButton);
                                 if(!_loc5_)
                                 {
                                    addr039b:
                                    §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                    if(!_loc5_)
                                    {
                                       addr03ac:
                                       §§pop().toolTip = §§pop();
                                       if(!_loc5_)
                                       {
                                          addr03b4:
                                          §§push(this.buildNowButton);
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             addr03c6:
                                             §§push(this.buildNowButton);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(Boolean(§§pop().enabled));
                                                if(!(_loc5_ && Boolean(_loc3_)))
                                                {
                                                   var _temp_36:* = §§pop();
                                                   §§push(_temp_36);
                                                   §§push(_temp_36);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               addr040a:
                                                               §§push(this._data);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§push(§§pop().locked);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        §§goto(addr0434);
                                                                     }
                                                                     §§goto(addr04d0);
                                                                  }
                                                                  §§goto(addr04a7);
                                                               }
                                                               §§goto(addr0461);
                                                            }
                                                            §§goto(addr044f);
                                                         }
                                                         §§goto(addr04cf);
                                                      }
                                                      addr0434:
                                                      §§pop().enabled = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         addr043d:
                                                         §§push(this.buildNowButton);
                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                         {
                                                            addr044f:
                                                            §§push(this._data);
                                                            if(!(_loc5_ && Boolean(this)))
                                                            {
                                                               addr0461:
                                                               §§push(§§pop().userCanAfford);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     var _temp_42:* = §§pop();
                                                                     §§push(_temp_42);
                                                                     §§push(_temp_42);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0478:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || Boolean(_loc3_))
                                                                           {
                                                                              addr048a:
                                                                              §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr0491:
                                                                                 addr0495:
                                                                                 §§push(Boolean(this.buildNowButton.enabled));
                                                                                 if(_loc4_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§goto(addr04a7);
                                                                                 }
                                                                                 §§goto(addr04ba);
                                                                              }
                                                                              §§goto(addr04bb);
                                                                           }
                                                                           §§goto(addr04cf);
                                                                        }
                                                                        addr04a7:
                                                                        var _temp_45:* = §§pop();
                                                                        §§goto(addr04a8);
                                                                     }
                                                                     addr04a8:
                                                                     addr04d0:
                                                                     §§push(_temp_45);
                                                                     if(_temp_45)
                                                                     {
                                                                        if(!(_loc5_ && Boolean(this)))
                                                                        {
                                                                           addr04ba:
                                                                           §§pop();
                                                                           addr04bb:
                                                                           addr04bf:
                                                                           addr04c2:
                                                                           §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr04cf:
                                                                              §§push(!§§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop().showPlus = §§pop();
                                                                     §§goto(addr04d3);
                                                                  }
                                                               }
                                                               §§goto(addr04ba);
                                                            }
                                                            §§goto(addr04bf);
                                                         }
                                                         §§goto(addr0491);
                                                      }
                                                      §§goto(addr04d3);
                                                   }
                                                   §§goto(addr0478);
                                                }
                                                §§goto(addr048a);
                                             }
                                             §§goto(addr0495);
                                          }
                                          §§goto(addr044f);
                                       }
                                       §§goto(addr043d);
                                    }
                                    §§goto(addr04c2);
                                 }
                                 §§goto(addr0491);
                              }
                              addr04d3:
                              var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                              var _loc2_:Boolean = false;
                              if(_loc4_)
                              {
                                 §§push(this._data);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§push(§§pop().permissionBuyable);
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             addr0517:
                                             if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                             {
                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                {
                                                   §§goto(addr0548);
                                                }
                                                §§goto(addr0565);
                                             }
                                             §§goto(addr054f);
                                          }
                                          §§goto(addr0565);
                                       }
                                       §§goto(addr054f);
                                    }
                                    addr0548:
                                    _loc2_ = true;
                                    if(!_loc5_)
                                    {
                                       addr054f:
                                       _loc1_.blueprintVO = this._data;
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr0565:
                                          this.center.data = _loc1_;
                                       }
                                    }
                                    §§goto(addr056c);
                                 }
                                 §§goto(addr0517);
                              }
                              addr056c:
                              return;
                           }
                           §§goto(addr039b);
                        }
                        §§goto(addr0391);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(!_loc5_)
                        {
                           §§push(true);
                           if(_loc4_)
                           {
                              §§pop().enabled = §§pop();
                              if(_loc4_)
                              {
                                 §§push(this.buildNowButton);
                                 if(_loc4_)
                                 {
                                    §§goto(addr01c2);
                                 }
                                 §§goto(addr03c6);
                              }
                              §§goto(addr02d1);
                           }
                           §§goto(addr04ba);
                        }
                     }
                     §§goto(addr0224);
                  }
                  §§goto(addr028e);
               }
               §§goto(addr027a);
            }
            §§goto(addr0269);
         }
         §§goto(addr00c4);
      }
      
      private function _ArchitectTemplate_Commercial_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr0032);
            }
            §§goto(addr0044);
         }
         addr0032:
         _loc1_.height = 25;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "middle";
            addr0044:
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.top = -9;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_LocaLabel1_i()];
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00a5:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00b9:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00b9);
            }
         }
         addr00bd:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.maxWidth = 690;
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  §§goto(addr003e);
               }
               §§goto(addr0090);
            }
            §§goto(addr0087);
         }
         addr003e:
         _loc1_.styleName = "flavorText";
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "flavorText";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0087:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0090:
                        this.flavorText = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr00a2:
                           BindingManager.executeBindings(this,"flavorText",this.flavorText);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr0090);
            }
            §§goto(addr00a2);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 240;
            if(_loc2_)
            {
               _loc1_.height = 300;
               if(!_loc3_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr0087);
            }
            addr0043:
            _loc1_.left = 4;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.bottom = 10;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_StickyNoteComponent1_i(),this._ArchitectTemplate_Commercial_BuildingCostComponent1_i(),this._ArchitectTemplate_Commercial_BuildingConstructionStepsComponent1_i()];
                  if(!_loc3_)
                  {
                     addr0087:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0093:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0097);
                  }
               }
               §§goto(addr0093);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _ArchitectTemplate_Commercial_StickyNoteComponent1_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.width = 226;
            if(!_loc3_)
            {
               _loc1_.top = 88;
               if(_loc2_)
               {
                  _loc1_.height = 120;
                  if(_loc2_)
                  {
                     _loc1_.left = 8;
                     if(_loc2_ || Boolean(this))
                     {
                        addr005c:
                        _loc1_.visible = false;
                        if(_loc2_)
                        {
                           addr0065:
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Commercial_Array4_c);
                           if(_loc2_)
                           {
                              _loc1_.id = "restrictionGroup";
                              if(_loc2_)
                              {
                                 addr0085:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00a7:
                                          this.restrictionGroup = _loc1_;
                                          if(_loc2_ || _loc3_)
                                          {
                                             BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                                          }
                                       }
                                       §§goto(addr00c6);
                                    }
                                 }
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr00a7);
               }
               addr00c6:
               return _loc1_;
            }
            §§goto(addr0085);
         }
         §§goto(addr005c);
      }
      
      private function _ArchitectTemplate_Commercial_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Commercial_DynamicImageButton1_i(),this._ArchitectTemplate_Commercial_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Commercial_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 0;
               if(!_loc2_)
               {
                  _loc1_.top = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     addr004f:
                     if(_loc3_ || _loc2_)
                     {
                        addr0074:
                        _loc1_.id = "restrictionFeatureButton";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b9:
                                    this.restrictionFeatureButton = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00c3:
                                       BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00c3);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004f);
            }
            §§goto(addr0074);
         }
         §§goto(addr0087);
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_Commercial_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc3_)
            {
               addr0045:
               _loc1_.top = 9;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_PostitHeaderComponent1_i(),this._ArchitectTemplate_Commercial_HGroup2_c()];
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0078:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0078);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _ArchitectTemplate_Commercial_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "restrictionHeader";
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr006c:
                        this.restrictionHeader = _loc1_;
                        if(_loc3_ || _loc2_)
                        {
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr006c);
      }
      
      private function _ArchitectTemplate_Commercial_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalAlign = "left";
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               addr0032:
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_BriskImageDynaLib1_i(),this._ArchitectTemplate_Commercial_LocaLabel2_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0091:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0091);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _ArchitectTemplate_Commercial_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               §§goto(addr002c);
            }
            §§goto(addr004e);
         }
         addr002c:
         _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
         if(!(_loc2_ && _loc3_))
         {
            addr004e:
            _loc1_.id = "restrictionGfx";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr0095);
                  }
               }
               addr0083:
               this.restrictionGfx = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr0095:
                  BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
               }
               §§goto(addr00a2);
            }
            §§goto(addr0095);
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc3_)
            {
               _loc1_.id = "restrictionName";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr006b);
                        }
                     }
                     §§goto(addr0075);
                  }
                  addr006b:
                  this.restrictionName = _loc1_;
                  if(_loc2_)
                  {
                     addr0075:
                     BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                  }
                  §§goto(addr0082);
               }
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _ArchitectTemplate_Commercial_BuildingCostComponent1_i() : BuildingCostComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr002c:
               _loc1_.top = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.height = 115;
                  if(!_loc2_)
                  {
                     _loc1_.id = "costComponent";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0087:
                                 this.costComponent = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0091:
                                    BindingManager.executeBindings(this,"costComponent",this.costComponent);
                                 }
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0087);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr002c);
      }
      
      private function _ArchitectTemplate_Commercial_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.height = 130;
               if(!_loc3_)
               {
                  addr0050:
                  _loc1_.bottom = -10;
                  if(!_loc3_)
                  {
                     _loc1_.id = "constructionStepsComponent";
                     if(!_loc3_)
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0087:
                                 this.constructionStepsComponent = _loc1_;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr0099:
                                    BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr0087);
                     }
                     addr00a6:
                     return _loc1_;
                  }
               }
               §§goto(addr0099);
            }
            §§goto(addr0066);
         }
         §§goto(addr0050);
      }
      
      private function _ArchitectTemplate_Commercial_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.left = 240;
            if(_loc2_)
            {
               _loc1_.right = 220;
               if(!_loc3_)
               {
                  _loc1_.height = 300;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.bottom = 15;
                     if(_loc2_)
                     {
                        §§goto(addr0061);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr00a1);
               }
               addr0061:
               _loc1_.verticalAlign = "top";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     addr0075:
                     _loc1_.gap = 15;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_DetailsCenterComponent1_i(),this._ArchitectTemplate_Commercial_MultistateButton1_i()];
                        if(!_loc3_)
                        {
                           addr00a1:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00a1);
                  }
               }
               addr00b9:
               return _loc1_;
            }
         }
         §§goto(addr00a1);
      }
      
      private function _ArchitectTemplate_Commercial_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.id = "center";
            if(_loc3_)
            {
               §§goto(addr003f);
            }
            §§goto(addr007b);
         }
         addr003f:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc3_)
            {
               _loc1_.document = this;
               if(!_loc2_)
               {
                  §§goto(addr0069);
               }
            }
            §§goto(addr007b);
         }
         addr0069:
         this.center = _loc1_;
         if(!(_loc2_ && _loc2_))
         {
            addr007b:
            BindingManager.executeBindings(this,"center",this.center);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.width = 204;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!_loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "buildNowButton";
                     if(_loc2_)
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr006b);
            }
            §§goto(addr008a);
         }
         addr006b:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc2_)
            {
               addr008a:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  §§goto(addr0093);
               }
            }
            §§goto(addr00a5);
         }
         addr0093:
         this.buildNowButton = _loc1_;
         if(_loc2_ || _loc3_)
         {
            addr00a5:
            BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 220;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 290;
               if(_loc2_)
               {
                  _loc1_.right = -4;
                  if(_loc2_)
                  {
                     addr005c:
                     _loc1_.bottom = 30;
                     if(!_loc3_)
                     {
                        addr0074:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_StickyNoteComponent2_c(),this._ArchitectTemplate_Commercial_StickyNoteComponent3_c()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a2);
                        }
                     }
                  }
                  §§goto(addr009e);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr0074);
      }
      
      private function _ArchitectTemplate_Commercial_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 130;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.tapeLeft = true;
                     if(_loc2_)
                     {
                        addr0072:
                        _loc1_.tapeRight = true;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Commercial_Array9_c);
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00b9:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00bd);
                           }
                        }
                     }
                  }
                  §§goto(addr00b9);
               }
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _ArchitectTemplate_Commercial_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Commercial_VGroup3_c()];
      }
      
      private function _ArchitectTemplate_Commercial_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_PostitHeaderComponent2_i(),this._ArchitectTemplate_Commercial_List1_i()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0059:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0059);
            }
            addr005d:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _ArchitectTemplate_Commercial_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "consumerHeader";
            if(!_loc3_)
            {
               §§goto(addr0042);
            }
            §§goto(addr007e);
         }
         addr0042:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc3_)
            {
               _loc1_.document = this;
               if(_loc2_)
               {
                  §§goto(addr006c);
               }
               §§goto(addr007e);
            }
         }
         addr006c:
         this.consumerHeader = _loc1_;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr007e:
            BindingManager.executeBindings(this,"consumerHeader",this.consumerHeader);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Commercial_ClassFactory1_c();
            if(_loc2_)
            {
               _loc1_.setStyle("skinClass",ArchitectNeedsSkin);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "consumerList";
                  if(_loc2_)
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr0086:
                              this.consumerList = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"consumerList",this.consumerList);
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00a5);
            }
            §§goto(addr005d);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || _loc3_)
         {
            _loc1_.generator = ArchitectNeedItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_StickyNoteComponent3_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 150;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 0;
                  if(_loc3_)
                  {
                     _loc1_.tapeTop = true;
                     if(_loc3_ || _loc2_)
                     {
                        addr0085:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Commercial_Array11_c);
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00ae:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b2);
                        }
                     }
                     §§goto(addr00ae);
                  }
                  addr00b2:
                  return _loc1_;
               }
               §§goto(addr0085);
            }
         }
         §§goto(addr00ae);
      }
      
      private function _ArchitectTemplate_Commercial_Array11_c() : Array
      {
         return [this._ArchitectTemplate_Commercial_VGroup4_i(),this._ArchitectTemplate_Commercial_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Commercial_VGroup4_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.paddingTop = 5;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_PostitHeaderComponent3_i(),this._ArchitectTemplate_Commercial_HGroup3_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr006c);
            }
            addr0059:
            _loc1_.id = "effectsGroup";
            if(!(_loc3_ && _loc2_))
            {
               addr006c:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr008d:
                        this.effectsGroup = _loc1_;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr009f:
                           BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr008d);
            }
            addr00ac:
            return _loc1_;
         }
         §§goto(addr009f);
      }
      
      private function _ArchitectTemplate_Commercial_PostitHeaderComponent3_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "effectsHeader";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr007d:
                           this.effectsHeader = _loc1_;
                           if(_loc3_)
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0094);
                  }
               }
            }
            §§goto(addr007d);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.paddingTop = 10;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Commercial_List2_i()];
                     §§goto(addr0057);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0090);
            }
         }
         addr0057:
         if(!(_loc2_ && _loc3_))
         {
            addr007c:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0090:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_List2_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Commercial_ClassFactory2_c();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "effectsList";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00a7);
               }
               addr0095:
               this.effectsList = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00a7:
                  BindingManager.executeBindings(this,"effectsList",this.effectsList);
               }
               return _loc1_;
            }
         }
         §§goto(addr00a7);
      }
      
      private function _ArchitectTemplate_Commercial_ClassFactory2_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = ArchitectImageValueItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Commercial_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc2_)
            {
               _loc1_.right = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = -10;
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(_loc3_)
                     {
                        addr006b:
                        _loc1_.id = "effectFeatureButton";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr009e:
                                    this.effectFeatureButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                                    }
                                 }
                              }
                              §§goto(addr00b5);
                           }
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr008d);
                  }
                  addr00b5:
                  return _loc1_;
               }
               §§goto(addr008d);
            }
            §§goto(addr006b);
         }
         §§goto(addr005b);
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_Commercial_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._597326554buildNowButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._597326554buildNowButton = param1;
                  addr0042:
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : DetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:DetailsCenterComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1364013995center;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0050:
                  this._1364013995center = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006b);
            }
            addr0079:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get constructionStepsComponent() : BuildingConstructionStepsComponent
      {
         return this._1976000313constructionStepsComponent;
      }
      
      public function set constructionStepsComponent(param1:BuildingConstructionStepsComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1976000313constructionStepsComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1976000313constructionStepsComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerHeader() : PostitHeaderComponent
      {
         return this._967769565consumerHeader;
      }
      
      public function set consumerHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._967769565consumerHeader;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._967769565consumerHeader = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerList() : List
      {
         return this._841105996consumerList;
      }
      
      public function set consumerList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._841105996consumerList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._841105996consumerList = param1;
                  addr0040:
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : BuildingCostComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:BuildingCostComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1253508016costComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1253508016costComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectFeatureButton() : DynamicImageButton
      {
         return this._1768900535effectFeatureButton;
      }
      
      public function set effectFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1768900535effectFeatureButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1768900535effectFeatureButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0053);
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsGroup() : VGroup
      {
         return this._490397341effectsGroup;
      }
      
      public function set effectsGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._490397341effectsGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._490397341effectsGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0052);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsHeader() : PostitHeaderComponent
      {
         return this._1961361873effectsHeader;
      }
      
      public function set effectsHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1961361873effectsHeader;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1961361873effectsHeader = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0068);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsList() : List
      {
         return this._1678527680effectsList;
      }
      
      public function set effectsList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1678527680effectsList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1678527680effectsList = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1684755691flavorText = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0068);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0044:
                  this._188635812restrictionFeatureButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0044);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0077);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGroup() : StickyNoteComponent
      {
         return this._505777645restrictionGroup;
      }
      
      public function set restrictionGroup(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._505777645restrictionGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._505777645restrictionGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0054);
            }
         }
         addr0073:
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1516951929restrictionHeader = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionName() : LocaLabel
      {
         return this._538066039restrictionName;
      }
      
      public function set restrictionName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._538066039restrictionName;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._538066039restrictionName = param1;
                  if(!_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005e);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

