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
   
   public class ArchitectTemplate_Production extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Production";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "ArchitectTemplate_Production";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1976000313constructionStepsComponent:BuildingConstructionStepsComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _490397341effectsGroup:VGroup;
      
      private var _1961361873effectsHeader:PostitHeaderComponent;
      
      private var _1678527680effectsList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1491869139productList:List;
      
      private var _657193711productsHeader:PostitHeaderComponent;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Production()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.percentWidth = 100;
                  if(!_loc1_)
                  {
                     addr0054:
                     this.percentHeight = 100;
                     if(!(_loc1_ && _loc1_))
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr009a);
                  }
                  addr0070:
                  this.mxmlContent = [this._ArchitectTemplate_Production_HGroup1_c(),this._ArchitectTemplate_Production_Group2_c(),this._ArchitectTemplate_Production_VGroup2_c(),this._ArchitectTemplate_Production_Group3_c()];
                  if(!(_loc1_ && _loc1_))
                  {
                     addr009a:
                     this.addEventListener("creationComplete",this.___ArchitectTemplate_Production_Group1_creationComplete);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0054);
            }
            §§goto(addr009a);
         }
         addr00a6:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  addr0064:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(!_loc3_)
            {
               addr0037:
               this.productsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.products");
               if(_loc4_ || Boolean(this))
               {
                  this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                  if(_loc4_)
                  {
                     §§push(this.buildNowButton);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                        if(_loc4_)
                        {
                           addr00a3:
                           this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                           if(!(_loc3_ && _loc2_))
                           {
                              this.restrictionFeatureButton.enabled = this.restrictionFeatureButton.visible = false;
                              addr00bd:
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 this.setupCenter();
                                 if(_loc4_)
                                 {
                                    addr00f4:
                                    this.updateAll();
                                 }
                                 §§goto(addr00fa);
                              }
                           }
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr00a3);
                  }
                  addr00fa:
                  return;
               }
               §§goto(addr00f4);
            }
            §§goto(addr00bd);
         }
         §§goto(addr0037);
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleEffectFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._data = param1.bluePrintVO;
            if(!(_loc2_ && _loc2_))
            {
               this._veryData = param1;
               if(_loc3_ || _loc2_)
               {
                  addr0051:
                  invalidateProperties();
               }
               §§goto(addr0056);
            }
            §§goto(addr0051);
         }
         addr0056:
      }
      
      private function updateAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(_loc1_)
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(_loc1_ || _loc2_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc1_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.restrictionGfx);
                        if(_loc1_)
                        {
                           §§push(this._veryData);
                           if(!_loc2_)
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!_loc2_)
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(this._veryData);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr00d0:
                                                §§push(§§pop().visualName);
                                                if(!_loc2_)
                                                {
                                                   addr00d8:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr00ec:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00ea:
                                                      addr00e7:
                                                      addr00e3:
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         addr00fb:
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§push(this.restrictionGroup);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(true);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc1_)
                                                                  {
                                                                     addr014e:
                                                                     §§push(this._data);
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(_loc1_)
                                                                        {
                                                                           addr0171:
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc1_ || Boolean(this))
                                                                              {
                                                                                 var _temp_14:* = §§pop();
                                                                                 §§push(_temp_14);
                                                                                 if(!_temp_14)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          addr01a2:
                                                                                          §§push(this._data);
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             addr01bc:
                                                                                             addr01b6:
                                                                                             addr01b3:
                                                                                             §§push(§§pop().state == BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                             if(_loc1_ || Boolean(this))
                                                                                             {
                                                                                                addr01ca:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §§push(this.costComponent);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push("noCosts");
                                                                                                         if(!(_loc2_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(this.costComponent);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  §§pop().invalidateProperties();
                                                                                                                  if(_loc1_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr0249:
                                                                                                                     addr0250:
                                                                                                                     addr024d:
                                                                                                                     if(!this._data.hasConstructionSteps)
                                                                                                                     {
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           addr0259:
                                                                                                                           §§push(this.constructionStepsComponent);
                                                                                                                           if(!(_loc2_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§push("noSteps");
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop().currentState = §§pop();
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    addr02a6:
                                                                                                                                    this.constructionStepsComponent.setData(this._veryData.materialVOList);
                                                                                                                                    §§goto(addr02a2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02c8);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr029a:
                                                                                                                                 §§pop().currentState = §§pop();
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    addr02a2:
                                                                                                                                    if(_loc1_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr02c8:
                                                                                                                                       this.effectsList.dataProvider = this._veryData.consequenceVOList;
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr02db:
                                                                                                                                          this.productList.dataProvider = this._veryData.outcomeVOList;
                                                                                                                                          if(!(_loc2_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             addr02f6:
                                                                                                                                             this.setTooltips();
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr02fb);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr02f6);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr0297:
                                                                                                                              §§push("hasSteps");
                                                                                                                           }
                                                                                                                           §§goto(addr029a);
                                                                                                                        }
                                                                                                                        §§goto(addr02db);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.constructionStepsComponent);
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr0297);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr02a6);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0231:
                                                                                                                  §§pop().setData(this._veryData.costVOList);
                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§goto(addr0249);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr02fb);
                                                                                                            }
                                                                                                            §§goto(addr0259);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0225:
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr022d:
                                                                                                               §§goto(addr0231);
                                                                                                               §§push(this.costComponent);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0249);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0222:
                                                                                                         §§push("hasCosts");
                                                                                                      }
                                                                                                      §§goto(addr0225);
                                                                                                   }
                                                                                                   §§goto(addr02c8);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.costComponent);
                                                                                                   if(_loc1_ || Boolean(this))
                                                                                                   {
                                                                                                      §§goto(addr0222);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0231);
                                                                                             }
                                                                                             §§goto(addr0250);
                                                                                          }
                                                                                          §§goto(addr024d);
                                                                                       }
                                                                                       §§goto(addr0249);
                                                                                    }
                                                                                    §§goto(addr0250);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01ca);
                                                                           }
                                                                           §§goto(addr01bc);
                                                                        }
                                                                        §§goto(addr01b6);
                                                                     }
                                                                     §§goto(addr01b3);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0147:
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr014e);
                                                                  }
                                                               }
                                                               addr02fb:
                                                               return;
                                                            }
                                                            addr0146:
                                                            §§push(false);
                                                            §§goto(addr0147);
                                                         }
                                                         §§goto(addr02f6);
                                                      }
                                                      §§goto(addr014e);
                                                   }
                                                   §§goto(addr01a2);
                                                }
                                                §§goto(addr00ec);
                                             }
                                             §§goto(addr00ea);
                                          }
                                          §§goto(addr00e7);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr022d);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0146);
               }
               §§goto(addr0171);
            }
            §§goto(addr02db);
         }
         §§goto(addr01a2);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._veryData = param1;
            if(_loc3_ || _loc3_)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.center);
            if(!_loc5_)
            {
               §§push("tooltipLeftScroll");
               if(!_loc5_)
               {
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(_loc6_)
                     {
                        addr0075:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr0074:
                        addr0071:
                     }
                     addr0078:
                     §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.products.arrowLeft"));
                     if(_loc6_)
                     {
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.products.arrowRight"));
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     if(_loc6_)
                     {
                        this.productList.setStyle("tooltipLeft",_loc3_);
                        if(_loc6_)
                        {
                           this.productList.setStyle("tooltipRight",_loc4_);
                           if(!(_loc5_ && _loc2_))
                           {
                              this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                              if(!_loc5_)
                              {
                                 §§push(this._data);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().permissionBuyable);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          var _temp_4:* = §§pop();
                                          §§push(_temp_4);
                                          if(_temp_4)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop();
                                                if(_loc6_ || _loc1_)
                                                {
                                                   addr0140:
                                                   addr012e:
                                                   addr012a:
                                                   §§push(this._data.locked);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr013f:
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         addr015e:
                                                         this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            addr017d:
                                                            this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                         }
                                                      }
                                                      §§goto(addr018e);
                                                   }
                                                   §§goto(addr015e);
                                                }
                                                §§goto(addr018e);
                                             }
                                             §§goto(addr013f);
                                          }
                                       }
                                    }
                                    §§goto(addr0140);
                                 }
                                 §§goto(addr012e);
                              }
                              addr018e:
                              return;
                           }
                           §§goto(addr012a);
                        }
                     }
                     §§goto(addr017d);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0074);
            }
            §§goto(addr0071);
         }
         §§goto(addr0078);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(_loc1_ || _loc2_)
            {
               addr002f:
               §§push(this.buildNowButton);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this._data);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(§§pop().buildPermissionAmount > 0);
                     if(!_loc2_)
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    §§push(this._data);
                                    if(!_loc2_)
                                    {
                                       addr008d:
                                       §§push(§§pop().locked);
                                       if(_loc1_)
                                       {
                                          addr0095:
                                          §§push(!§§pop());
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00a3:
                                             var _temp_8:* = §§pop();
                                             §§goto(addr00c3);
                                          }
                                          §§goto(addr00b5);
                                       }
                                       addr00c3:
                                       §§goto(addr00a4);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr0095);
                           }
                           §§goto(addr00a3);
                        }
                        addr00a4:
                        §§push(_temp_8);
                        if(_temp_8)
                        {
                           if(_loc1_ || Boolean(this))
                           {
                              addr00b5:
                              §§pop();
                              addr00ba:
                              addr00b6:
                              §§push(this._data.userCanAfford);
                              if(_loc1_)
                              {
                                 §§push(§§pop());
                              }
                           }
                        }
                        §§pop().enabled = §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           this.setupCenter();
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr00f0);
                           }
                           §§goto(addr0102);
                        }
                        addr00f0:
                        this.setTooltips();
                        if(_loc1_ || Boolean(this))
                        {
                           addr0102:
                           this.updateAll();
                        }
                        return;
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0102);
         }
         §§goto(addr002f);
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §§push(this._data);
            if(!_loc4_)
            {
               §§push(§§pop().state);
               if(!_loc4_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(_loc5_ || Boolean(this))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(this.buildNowButton);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(true);
                              if(_loc5_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§push(this.buildNowButton);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(!_loc4_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(this.buildNowButton);
                                             if(_loc5_)
                                             {
                                                addr00ac:
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push("button_icon_build");
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push("");
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 var _temp_15:* = §§pop();
                                                                                 §§push(_temp_15);
                                                                                 §§push(_temp_15);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr019f:
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr02e6:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      addr02f8:
                                                                                                      §§push(true);
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop().showSparkle = §§pop();
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                               if(!(_loc4_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr0333:
                                                                                                                  §§pop().toolTip = §§pop();
                                                                                                                  if(!(_loc5_ || _loc2_))
                                                                                                                  {
                                                                                                                     addr035e:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr036b:
                                                                                                                        §§pop().imageNameRight = "layer_cc_icon";
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr037c:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(!(_loc4_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr038e:
                                                                                                                              §§push(false);
                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr039d:
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    addr03a6:
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr03b8:
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(_loc5_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             addr03d9:
                                                                                                                                             §§push(this.buildNowButton);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                addr03e3:
                                                                                                                                                §§push(this.buildNowButton);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr03ed:
                                                                                                                                                   §§push(Boolean(§§pop().enabled));
                                                                                                                                                   if(_loc5_ || Boolean(this))
                                                                                                                                                   {
                                                                                                                                                      var _temp_29:* = §§pop();
                                                                                                                                                      §§push(_temp_29);
                                                                                                                                                      §§push(_temp_29);
                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr0418:
                                                                                                                                                               §§pop();
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this._data);
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().locked);
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0439:
                                                                                                                                                                           §§pop().enabled = §§pop();
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr044a:
                                                                                                                                                                              §§push(this.buildNowButton);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0454:
                                                                                                                                                                                 §§push(this._data);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().userCanAfford);
                                                                                                                                                                                    if(!(_loc4_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0476:
                                                                                                                                                                                          var _temp_33:* = §§pop();
                                                                                                                                                                                          §§push(_temp_33);
                                                                                                                                                                                          §§push(_temp_33);
                                                                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0485:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04a6:
                                                                                                                                                                                                      addr04aa:
                                                                                                                                                                                                      §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr04bc:
                                                                                                                                                                                                         var _temp_38:* = §§pop();
                                                                                                                                                                                                         addr04ed:
                                                                                                                                                                                                         addr04bd:
                                                                                                                                                                                                         §§push(_temp_38);
                                                                                                                                                                                                         if(_temp_38)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_ || Boolean(this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr04cf:
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr04d0:
                                                                                                                                                                                                               addr04d4:
                                                                                                                                                                                                               addr04d7:
                                                                                                                                                                                                               §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr04ec:
                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().showPlus = §§pop();
                                                                                                                                                                                                         addr04f0:
                                                                                                                                                                                                         var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                                                         var _loc2_:Boolean = false;
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this._data);
                                                                                                                                                                                                            if(_loc5_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().permissionBuyable);
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0534:
                                                                                                                                                                                                                        addr0530:
                                                                                                                                                                                                                        if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr055e:
                                                                                                                                                                                                                              _loc2_ = true;
                                                                                                                                                                                                                              if(_loc5_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr056d:
                                                                                                                                                                                                                                 _loc1_.blueprintVO = this._data;
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr057b:
                                                                                                                                                                                                                                    this.center.data = _loc1_;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0582);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr057b);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr0582:
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr056d);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr057b);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr056d);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr055e);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0534);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0530);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04ec);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04d0);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04ed);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04bc);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04bd);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04cf);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04d4);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04d0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04f0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04cf);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0476);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04d4);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04a6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04ed);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0439);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0485);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0418);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04aa);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04d0);
                                                                                                                                          }
                                                                                                                                          §§goto(addr044a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04d7);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04a6);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03d9);
                                                                                                                              }
                                                                                                                              §§goto(addr04bc);
                                                                                                                           }
                                                                                                                           §§goto(addr03b8);
                                                                                                                        }
                                                                                                                        §§goto(addr044a);
                                                                                                                     }
                                                                                                                     §§goto(addr04d0);
                                                                                                                  }
                                                                                                                  §§goto(addr03d9);
                                                                                                               }
                                                                                                               §§goto(addr04d7);
                                                                                                            }
                                                                                                            §§goto(addr038e);
                                                                                                         }
                                                                                                         §§goto(addr044a);
                                                                                                      }
                                                                                                      §§goto(addr0418);
                                                                                                   }
                                                                                                   §§goto(addr03e3);
                                                                                                }
                                                                                                §§goto(addr03d9);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr026c:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr0274:
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr027d:
                                                                                                   §§push(this._data);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0287:
                                                                                                      §§push(§§pop().state);
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc5_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr02cc:
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr02d5:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           §§goto(addr02e6);
                                                                                                                        }
                                                                                                                        §§goto(addr04f0);
                                                                                                                     }
                                                                                                                     §§goto(addr036b);
                                                                                                                  }
                                                                                                                  §§goto(addr03e3);
                                                                                                               }
                                                                                                               §§goto(addr03a6);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0354:
                                                                                                               addr034e:
                                                                                                               addr034b:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr035e);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03d9);
                                                                                                         }
                                                                                                         §§goto(addr0354);
                                                                                                      }
                                                                                                      §§goto(addr034e);
                                                                                                   }
                                                                                                   §§goto(addr034b);
                                                                                                }
                                                                                                §§goto(addr02e6);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0333);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr026b:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr026c);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0268:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr026b);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0267:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0268);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0266:
                                                                                 var _temp_47:* = §§pop();
                                                                                 §§push(_temp_47);
                                                                                 §§push(_temp_47);
                                                                              }
                                                                              §§goto(addr0267);
                                                                           }
                                                                           §§goto(addr04aa);
                                                                        }
                                                                        §§goto(addr0454);
                                                                     }
                                                                     §§goto(addr027d);
                                                                  }
                                                                  §§goto(addr02d5);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr020c:
                                                               §§push(this.buildNowButton);
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  §§push("gui_resources_icons");
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr022f:
                                                                     §§pop().libNameRight = §§pop();
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc5_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr0266);
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr03ed);
                                                                        }
                                                                        §§goto(addr04a6);
                                                                     }
                                                                     §§goto(addr035e);
                                                                  }
                                                                  §§goto(addr036b);
                                                               }
                                                            }
                                                            §§goto(addr02cc);
                                                         }
                                                         §§goto(addr022f);
                                                      }
                                                      §§goto(addr03e3);
                                                   }
                                                   §§goto(addr037c);
                                                }
                                                §§goto(addr019f);
                                             }
                                             §§goto(addr038e);
                                          }
                                          §§goto(addr02e6);
                                       }
                                       §§goto(addr0274);
                                    }
                                    §§goto(addr02f8);
                                 }
                                 §§goto(addr03d9);
                              }
                              §§goto(addr0439);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr03d9);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(_loc5_)
                        {
                           §§push(true);
                           if(!_loc4_)
                           {
                              §§pop().enabled = §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(this.buildNowButton);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§pop().label = §§pop();
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr020c);
                                       }
                                       §§goto(addr03d9);
                                    }
                                    §§goto(addr0333);
                                 }
                                 §§goto(addr04d0);
                              }
                              §§goto(addr03d9);
                           }
                           §§goto(addr039d);
                        }
                     }
                     §§goto(addr02f8);
                  }
                  §§goto(addr0354);
               }
               §§goto(addr034e);
            }
            §§goto(addr0287);
         }
         §§goto(addr037c);
      }
      
      private function _ArchitectTemplate_Production_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.height = 25;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.top = -9;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Production_LocaLabel1_i()];
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00a5:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a5);
                  }
               }
               §§goto(addr0091);
            }
         }
         §§goto(addr00a5);
      }
      
      private function _ArchitectTemplate_Production_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxWidth = 690;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "flavorText";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0090:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0099);
                              }
                              §§goto(addr00ab);
                           }
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr00ab);
            }
            §§goto(addr0090);
         }
         addr0099:
         this.flavorText = _loc1_;
         if(_loc3_ || _loc3_)
         {
            addr00ab:
            BindingManager.executeBindings(this,"flavorText",this.flavorText);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 240;
            if(_loc3_)
            {
               _loc1_.height = 300;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.left = 4;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 10;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Production_StickyNoteComponent1_i(),this._ArchitectTemplate_Production_BuildingCostComponent1_i(),this._ArchitectTemplate_Production_BuildingConstructionStepsComponent1_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr009c);
                     }
                  }
               }
            }
            addr00a0:
            return _loc1_;
         }
         §§goto(addr009c);
      }
      
      private function _ArchitectTemplate_Production_StickyNoteComponent1_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 226;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 88;
               if(_loc2_)
               {
                  _loc1_.height = 120;
                  if(_loc2_)
                  {
                     _loc1_.left = 8;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr009f);
                  }
                  addr006b:
                  _loc1_.visible = false;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Production_Array4_c);
                     if(!_loc3_)
                     {
                        addr0089:
                        _loc1_.id = "restrictionGroup";
                        if(!_loc3_)
                        {
                           addr009f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00ab:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00be);
                              }
                           }
                        }
                        addr00b4:
                        this.restrictionGroup = _loc1_;
                        if(_loc2_)
                        {
                           addr00be:
                           BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00ab);
                  }
                  addr00cb:
                  return _loc1_;
               }
            }
         }
         §§goto(addr0089);
      }
      
      private function _ArchitectTemplate_Production_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Production_DynamicImageButton1_i(),this._ArchitectTemplate_Production_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Production_DynamicImageButton1_i() : DynamicImageButton
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
               if(!_loc2_)
               {
                  _loc1_.top = 0;
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "restrictionFeatureButton";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0097:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00a8:
                                    this.restrictionFeatureButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                                    }
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00b2);
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr007f);
         }
         addr00bf:
         return _loc1_;
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_Production_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.top = 9;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Production_PostitHeaderComponent1_i(),this._ArchitectTemplate_Production_HGroup2_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr007b);
                  }
                  §§goto(addr0087);
               }
               addr007b:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008b);
            }
            §§goto(addr0087);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "restrictionHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0077:
                        this.restrictionHeader = _loc1_;
                        if(_loc2_)
                        {
                           addr0081:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0077);
            }
            addr008e:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      private function _ArchitectTemplate_Production_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalAlign = "left";
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Production_BriskImageDynaLib1_i(),this._ArchitectTemplate_Production_LocaLabel2_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr0077);
                  }
                  §§goto(addr008b);
               }
               addr0077:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr008b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008f);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _ArchitectTemplate_Production_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(_loc3_ || Boolean(this))
               {
                  addr005c:
                  _loc1_.id = "restrictionGfx";
                  if(_loc3_ || Boolean(this))
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00a0);
                           }
                           §§goto(addr00aa);
                        }
                     }
                     addr00a0:
                     this.restrictionGfx = _loc1_;
                     if(_loc3_)
                     {
                        addr00aa:
                        BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00aa);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr006f);
      }
      
      private function _ArchitectTemplate_Production_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc2_)
            {
               _loc1_.id = "restrictionName";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           this.restrictionName = _loc1_;
                           if(_loc2_)
                           {
                              addr0086:
                              BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr0086);
                     }
                     addr0093:
                     return _loc1_;
                  }
               }
            }
            §§goto(addr007c);
         }
         §§goto(addr0086);
      }
      
      private function _ArchitectTemplate_Production_BuildingCostComponent1_i() : BuildingCostComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 0;
               if(_loc3_)
               {
                  _loc1_.height = 115;
                  if(_loc3_)
                  {
                     addr0057:
                     _loc1_.id = "costComponent";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0082:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008b);
                              }
                           }
                           §§goto(addr009d);
                        }
                        addr008b:
                        this.costComponent = _loc1_;
                        if(_loc3_ || _loc2_)
                        {
                           addr009d:
                           BindingManager.executeBindings(this,"costComponent",this.costComponent);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr009d);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr009d);
         }
         §§goto(addr0057);
      }
      
      private function _ArchitectTemplate_Production_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 130;
               if(_loc3_)
               {
                  _loc1_.bottom = -10;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "constructionStepsComponent";
                     if(!_loc2_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0081);
                              }
                              §§goto(addr008b);
                           }
                        }
                        addr0081:
                        this.constructionStepsComponent = _loc1_;
                        if(!_loc2_)
                        {
                           addr008b:
                           BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
                        }
                        §§goto(addr0098);
                     }
                     addr0098:
                     return _loc1_;
                  }
                  §§goto(addr006c);
               }
            }
         }
         §§goto(addr0081);
      }
      
      private function _ArchitectTemplate_Production_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.left = 240;
            if(!_loc2_)
            {
               _loc1_.right = 220;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.height = 300;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.bottom = 15;
                     addr0050:
                     if(_loc3_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0083);
                  }
                  addr0067:
                  _loc1_.verticalAlign = "top";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        addr0083:
                        _loc1_.gap = 15;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Production_DetailsCenterComponent1_i(),this._ArchitectTemplate_Production_MultistateButton1_i()];
                           addr008d:
                           if(_loc3_ || Boolean(this))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00c9:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr008d);
                  }
                  addr00cd:
                  return _loc1_;
               }
               §§goto(addr00c9);
            }
            §§goto(addr0050);
         }
         §§goto(addr008d);
      }
      
      private function _ArchitectTemplate_Production_DetailsCenterComponent1_i() : DetailsCenterComponent
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
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0072);
                     }
                  }
                  §§goto(addr0084);
               }
            }
         }
         addr0072:
         this.center = _loc1_;
         if(!(_loc2_ && _loc2_))
         {
            addr0084:
            BindingManager.executeBindings(this,"center",this.center);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 204;
            if(_loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!_loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(_loc2_)
                  {
                     _loc1_.id = "buildNowButton";
                     if(_loc2_ || _loc2_)
                     {
                        addr0062:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0076:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0092:
                                 this.buildNowButton = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0092);
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr0076);
            }
            §§goto(addr0062);
         }
         §§goto(addr00a4);
      }
      
      private function _ArchitectTemplate_Production_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 220;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 290;
               if(!_loc3_)
               {
                  addr0047:
                  _loc1_.right = -4;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 30;
                     if(!_loc3_)
                     {
                        addr0067:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Production_StickyNoteComponent2_c(),this._ArchitectTemplate_Production_StickyNoteComponent3_c()];
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr0091);
                     }
                     addr0085:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0091:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0067);
            }
            §§goto(addr0047);
         }
         §§goto(addr0091);
      }
      
      private function _ArchitectTemplate_Production_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 130;
               if(_loc3_)
               {
                  addr0051:
                  _loc1_.top = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr008b);
            }
            §§goto(addr0051);
         }
         addr0063:
         _loc1_.tapeLeft = true;
         if(!(_loc2_ && _loc2_))
         {
            addr0075:
            _loc1_.tapeRight = true;
            if(!_loc2_)
            {
               addr008b:
               _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Production_Array9_c);
               if(!_loc2_)
               {
                  addr00a0:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00b8);
            }
            §§goto(addr00a0);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Production_VGroup3_c()];
      }
      
      private function _ArchitectTemplate_Production_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._ArchitectTemplate_Production_PostitHeaderComponent2_i(),this._ArchitectTemplate_Production_List1_i()];
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0067:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0073);
         }
         §§goto(addr0067);
      }
      
      private function _ArchitectTemplate_Production_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.id = "productsHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0061);
                     }
                     §§goto(addr006b);
                  }
               }
               addr0061:
               this.productsHeader = _loc1_;
               if(_loc2_)
               {
                  addr006b:
                  BindingManager.executeBindings(this,"productsHeader",this.productsHeader);
               }
               §§goto(addr0078);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _ArchitectTemplate_Production_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Production_ClassFactory1_c();
            if(_loc2_)
            {
               §§goto(addr0037);
            }
            §§goto(addr005b);
         }
         addr0037:
         _loc1_.setStyle("skinClass",ArchitectNeedsSkin);
         if(_loc2_ || Boolean(this))
         {
            addr005b:
            _loc1_.id = "productList";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr0090);
                     }
                     §§goto(addr00a2);
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr00a2);
         }
         addr0090:
         this.productList = _loc1_;
         if(!(_loc3_ && Boolean(this)))
         {
            addr00a2:
            BindingManager.executeBindings(this,"productList",this.productList);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = ArchitectNeedItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_StickyNoteComponent3_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 150;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.tapeTop = true;
                     if(_loc2_ || Boolean(this))
                     {
                        addr007e:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Production_Array11_c);
                        if(_loc2_ || _loc2_)
                        {
                           addr009b:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr007e);
            }
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_Array11_c() : Array
      {
         return [this._ArchitectTemplate_Production_VGroup4_i(),this._ArchitectTemplate_Production_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Production_VGroup4_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.paddingTop = 5;
               if(_loc2_)
               {
                  addr0033:
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Production_PostitHeaderComponent3_i(),this._ArchitectTemplate_Production_HGroup3_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "effectsGroup";
                     if(!_loc3_)
                     {
                        addr0068:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0092:
                                 this.effectsGroup = _loc1_;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0068);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr0092);
         }
         §§goto(addr0033);
      }
      
      private function _ArchitectTemplate_Production_PostitHeaderComponent3_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.id = "effectsHeader";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr006e);
                        }
                        §§goto(addr0080);
                     }
                  }
               }
            }
            addr006e:
            this.effectsHeader = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr0080:
               BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
            }
            §§goto(addr008d);
         }
         addr008d:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0073);
         }
         addr0032:
         _loc1_.horizontalCenter = 0;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.paddingTop = 10;
            if(!(_loc3_ && _loc3_))
            {
               addr0073:
               _loc1_.mxmlContent = [this._ArchitectTemplate_Production_List2_i()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0097:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr009b);
               }
            }
            §§goto(addr0097);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_List2_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Production_ClassFactory2_c();
            if(_loc3_ || Boolean(this))
            {
               _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
               if(_loc3_)
               {
                  _loc1_.id = "effectsList";
                  if(!_loc2_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr008a);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr009d);
               }
               addr008a:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr0093:
                  this.effectsList = _loc1_;
                  if(_loc3_)
                  {
                     addr009d:
                     BindingManager.executeBindings(this,"effectsList",this.effectsList);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0068);
         }
         §§goto(addr0093);
      }
      
      private function _ArchitectTemplate_Production_ClassFactory2_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = ArchitectImageValueItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Production_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.right = 0;
               if(_loc3_)
               {
                  _loc1_.top = -10;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr006c);
            }
         }
         addr005c:
         _loc1_.addEventListener("click",this.__effectFeatureButton_click);
         if(_loc3_)
         {
            addr006c:
            _loc1_.id = "effectFeatureButton";
            if(_loc3_)
            {
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008f:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0098:
                        this.effectFeatureButton = _loc1_;
                        if(_loc3_)
                        {
                           addr00a2:
                           BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr0098);
            }
            §§goto(addr008f);
         }
         addr00af:
         return _loc1_;
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_Production_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._597326554buildNowButton = param1;
                  if(!_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0054);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0049:
                  this._1364013995center = param1;
                  if(!_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0053);
            }
            addr0071:
            return;
         }
         §§goto(addr0049);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1976000313constructionStepsComponent = param1;
                  if(_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0052);
            }
         }
         addr0070:
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
               if(!(_loc4_ && _loc3_))
               {
                  addr0040:
                  this._1253508016costComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
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
                  addr0037:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsGroup() : VGroup
      {
         return this._490397341effectsGroup;
      }
      
      public function set effectsGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._490397341effectsGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._490397341effectsGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1961361873effectsHeader = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsList() : List
      {
         return this._1678527680effectsList;
      }
      
      public function set effectsList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1678527680effectsList;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1678527680effectsList = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
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
               if(!(_loc4_ && _loc3_))
               {
                  this._1684755691flavorText = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006e);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get productList() : List
      {
         return this._1491869139productList;
      }
      
      public function set productList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1491869139productList;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1491869139productList = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get productsHeader() : PostitHeaderComponent
      {
         return this._657193711productsHeader;
      }
      
      public function set productsHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._657193711productsHeader;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._657193711productsHeader = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0072);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productsHeader",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
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
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
         }
         addr0077:
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
               if(!(_loc4_ && _loc3_))
               {
                  this._505777645restrictionGroup = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0056);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1516951929restrictionHeader = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005c);
            }
         }
         addr007b:
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._538066039restrictionName = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0067);
            }
            addr0085:
            return;
         }
         §§goto(addr0067);
      }
   }
}

