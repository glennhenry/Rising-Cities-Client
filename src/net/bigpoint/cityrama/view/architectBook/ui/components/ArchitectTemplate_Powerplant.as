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
   
   public class ArchitectTemplate_Powerplant extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Powerplant";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ArchitectTemplate_Powerplant";
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
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Powerplant()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  addr004a:
                  this.percentWidth = 100;
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr00a2);
               }
               addr005c:
               this.percentHeight = 100;
               if(!(_loc1_ && _loc2_))
               {
                  addr0078:
                  this.mxmlContent = [this._ArchitectTemplate_Powerplant_HGroup1_c(),this._ArchitectTemplate_Powerplant_Group2_c(),this._ArchitectTemplate_Powerplant_VGroup2_c(),this._ArchitectTemplate_Powerplant_Group3_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr00a2:
                     this.addEventListener("creationComplete",this.___ArchitectTemplate_Powerplant_Group1_creationComplete);
                  }
               }
               return;
            }
            §§goto(addr004a);
         }
         §§goto(addr0078);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0056);
            }
            §§goto(addr0051);
         }
         addr0056:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
            this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(_loc4_ || _loc2_)
            {
               §§push(this.buildNowButton);
               if(_loc4_ || _loc3_)
               {
                  §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                  if(!(_loc3_ && _loc2_))
                  {
                     this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                     if(!_loc3_)
                     {
                        addr0093:
                        this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                        if(_loc4_ || Boolean(param1))
                        {
                           this.restrictionFeatureButton.visible = this.restrictionFeatureButton.includeInLayout = false;
                           if(_loc4_)
                           {
                              §§goto(addr00d0);
                           }
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00db);
               }
               §§goto(addr0093);
            }
            addr00d0:
            this.setupCenter();
            if(!_loc3_)
            {
               addr00db:
               this.updateAll();
            }
            return;
         }
         §§goto(addr00db);
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
         if(_loc1_)
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
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
            if(_loc3_)
            {
               this._veryData = param1;
               if(!(_loc2_ && _loc2_))
               {
                  addr004c:
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      private function updateAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
            if(_loc2_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(!_loc1_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc2_)
                     {
                        §§push(this.restrictionGfx);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this._veryData);
                           if(!_loc1_)
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(this._veryData);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(!(_loc1_ && Boolean(this)))
                                             {
                                                §§push(§§pop().visualName);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   addr00e1:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      addr00fd:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00fb:
                                                      addr00f8:
                                                      addr00f4:
                                                      if(_loc2_)
                                                      {
                                                         addr0104:
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc2_)
                                                         {
                                                            addr0119:
                                                            §§push(this.restrictionGroup);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(true);
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr0147:
                                                                     §§push(this._data);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           addr0172:
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc2_)
                                                                              {
                                                                                 var _temp_14:* = §§pop();
                                                                                 §§push(_temp_14);
                                                                                 if(!_temp_14)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc2_ || Boolean(this))
                                                                                       {
                                                                                          §§push(this._data);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr01ad:
                                                                                             addr01a7:
                                                                                             §§push(§§pop().state == BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                addr01b3:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.costComponent);
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         §§push("noCosts");
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(!(_loc1_ && _loc1_))
                                                                                                            {
                                                                                                               addr01ed:
                                                                                                               §§push(this.costComponent);
                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                               {
                                                                                                                  §§pop().invalidateProperties();
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     addr023a:
                                                                                                                     addr0241:
                                                                                                                     addr023e:
                                                                                                                     if(!this._data.hasConstructionSteps)
                                                                                                                     {
                                                                                                                        if(!(_loc1_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           addr0252:
                                                                                                                           §§push(this.constructionStepsComponent);
                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§push("noSteps");
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§pop().currentState = §§pop();
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr02c9:
                                                                                                                                    this.effectsList.dataProvider = this._veryData.consequenceVOList;
                                                                                                                                    if(!(_loc1_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr02e4:
                                                                                                                                       this.setTooltips();
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr0293:
                                                                                                                                 §§pop().currentState = §§pop();
                                                                                                                                 if(!(_loc1_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    this.constructionStepsComponent.setData(this._veryData.materialVOList);
                                                                                                                                    addr02a7:
                                                                                                                                    addr02a3:
                                                                                                                                    if(!(_loc1_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§goto(addr02c9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02e4);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr02ea);
                                                                                                                           }
                                                                                                                           §§goto(addr02a7);
                                                                                                                        }
                                                                                                                        §§goto(addr02c9);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.constructionStepsComponent);
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr0293);
                                                                                                                           §§push("hasSteps");
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr02a7);
                                                                                                                  }
                                                                                                                  §§goto(addr02c9);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0222:
                                                                                                                  §§pop().setData(this._veryData.costVOList);
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§goto(addr023a);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0252);
                                                                                                            }
                                                                                                            §§goto(addr02ea);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0216:
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §§goto(addr0222);
                                                                                                               §§push(this.costComponent);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02e4);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0213:
                                                                                                         §§push("hasCosts");
                                                                                                      }
                                                                                                      §§goto(addr0216);
                                                                                                   }
                                                                                                   §§goto(addr02a3);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.costComponent);
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§goto(addr0213);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0222);
                                                                                             }
                                                                                             §§goto(addr0241);
                                                                                          }
                                                                                          §§goto(addr023e);
                                                                                       }
                                                                                       §§goto(addr023a);
                                                                                    }
                                                                                    §§goto(addr0241);
                                                                                 }
                                                                                 §§goto(addr01b3);
                                                                              }
                                                                              §§goto(addr0241);
                                                                           }
                                                                           §§goto(addr01ad);
                                                                        }
                                                                        §§goto(addr01a7);
                                                                     }
                                                                     §§goto(addr023e);
                                                                  }
                                                                  addr02ea:
                                                                  return;
                                                               }
                                                               addr0140:
                                                               §§pop().visible = §§pop();
                                                               if(!_loc1_)
                                                               {
                                                                  §§goto(addr0147);
                                                               }
                                                               §§goto(addr023a);
                                                            }
                                                            else
                                                            {
                                                               addr013f:
                                                               §§push(false);
                                                            }
                                                            §§goto(addr0140);
                                                         }
                                                         §§goto(addr02c9);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr02c9);
                                                }
                                                §§goto(addr00fd);
                                             }
                                             §§goto(addr00fb);
                                          }
                                          §§goto(addr00f8);
                                       }
                                       §§goto(addr00f4);
                                    }
                                    §§goto(addr0104);
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00fb);
                           }
                           §§goto(addr00f8);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr0119);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr013f);
               }
               §§goto(addr0172);
            }
            §§goto(addr01ed);
         }
         §§goto(addr0104);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._veryData = param1;
            if(_loc2_ || Boolean(param1))
            {
               addr0029:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      public function get data() : BlueprintVo
      {
         return this._data;
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(this.center);
            if(!_loc4_)
            {
               §§push("tooltipLeftScroll");
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        addr0097:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr0096:
                        addr0093:
                        if(!(_loc4_ && _loc2_))
                        {
                           addr00b3:
                           this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                           if(!_loc4_)
                           {
                              addr00ca:
                              §§push(this._data);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop().permissionBuyable);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       var _temp_11:* = §§pop();
                                       §§push(_temp_11);
                                       if(_temp_11)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop();
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                addr013c:
                                                addr0120:
                                                §§push(this._data.locked);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr013b:
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr0146:
                                                      this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                                      if(_loc3_)
                                                      {
                                                         this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                      }
                                                   }
                                                   §§goto(addr016d);
                                                }
                                             }
                                             §§goto(addr0146);
                                          }
                                          §§goto(addr013b);
                                       }
                                    }
                                 }
                                 §§goto(addr013c);
                              }
                              §§goto(addr0120);
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr00ca);
                     }
                     addr016d:
                     return;
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0096);
            }
            §§goto(addr0093);
         }
         §§goto(addr00b3);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(_loc1_)
            {
               this.setupCenter();
               if(!_loc2_)
               {
                  addr003c:
                  this.setTooltips();
                  if(!(_loc2_ && _loc1_))
                  {
                     this.updateAll();
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || _loc2_)
         {
            §§push(this._data);
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop().state);
               if(_loc5_ || _loc2_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(this.buildNowButton);
                           if(!_loc4_)
                           {
                              §§push(true);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§pop().enabled = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(_loc5_)
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc5_ || Boolean(this))
                                          {
                                             §§push(this.buildNowButton);
                                             if(_loc5_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr00ef:
                                                         §§push("button_icon_build");
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           addr014f:
                                                                           §§push(this.buildNowButton);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc5_ || Boolean(this))
                                                                              {
                                                                                 var _temp_16:* = §§pop();
                                                                                 §§push(_temp_16);
                                                                                 §§push(_temp_16);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr01ce:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         addr01f3:
                                                                                                         §§pop().label = §§pop();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               §§push("gui_resources_icons");
                                                                                                               if(_loc5_ || _loc1_)
                                                                                                               {
                                                                                                                  addr021f:
                                                                                                                  §§pop().libNameRight = §§pop();
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr023a:
                                                                                                                        §§push(this.buildNowButton);
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr0250:
                                                                                                                           §§pop().libNameLeft = _loc3_ = "";
                                                                                                                           addr0254:
                                                                                                                           addr0253:
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr025c:
                                                                                                                              §§pop().imageNameLeft = §§pop();
                                                                                                                              if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 addr026d:
                                                                                                                                 §§push(this._data);
                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().state);
                                                                                                                                    if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr02a9:
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(this.buildNowButton);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr02bd:
                                                                                                                                                   §§push("dd_button_icon");
                                                                                                                                                   if(_loc5_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr02ce:
                                                                                                                                                      §§pop().imageNameRight = §§pop();
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr02d7:
                                                                                                                                                         §§push(this.buildNowButton);
                                                                                                                                                         if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                         {
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().showSparkle = §§pop();
                                                                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr0301:
                                                                                                                                                                  §§push(this.buildNowButton);
                                                                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr0313:
                                                                                                                                                                     §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        addr032c:
                                                                                                                                                                        §§pop().toolTip = §§pop();
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr03d2:
                                                                                                                                                                           §§push(this.buildNowButton);
                                                                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr03e4:
                                                                                                                                                                              §§push(this.buildNowButton);
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop().enabled));
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_32:* = §§pop();
                                                                                                                                                                                    §§push(_temp_32);
                                                                                                                                                                                    §§push(_temp_32);
                                                                                                                                                                                    if(!(_loc4_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(_loc5_ || Boolean(this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0420:
                                                                                                                                                                                                §§push(this._data);
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().locked);
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                      if(_loc5_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0442:
                                                                                                                                                                                                         §§pop().enabled = §§pop();
                                                                                                                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0453:
                                                                                                                                                                                                            §§push(this.buildNowButton);
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this._data);
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().userCanAfford);
                                                                                                                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        var _temp_39:* = §§pop();
                                                                                                                                                                                                                        §§push(_temp_39);
                                                                                                                                                                                                                        §§push(_temp_39);
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0498:
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr04d6:
                                                                                                                                                                                                                                    addr049f:
                                                                                                                                                                                                                                    addr04a3:
                                                                                                                                                                                                                                    §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr04ad:
                                                                                                                                                                                                                                       var _temp_40:* = §§pop();
                                                                                                                                                                                                                                       addr04ae:
                                                                                                                                                                                                                                       §§push(_temp_40);
                                                                                                                                                                                                                                       if(_temp_40)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr04c0:
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             addr04c1:
                                                                                                                                                                                                                                             addr04c5:
                                                                                                                                                                                                                                             addr04c8:
                                                                                                                                                                                                                                             §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr04d5:
                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().showPlus = §§pop();
                                                                                                                                                                                                                                    addr04d9:
                                                                                                                                                                                                                                    var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                                                                                    var _loc2_:Boolean = false;
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this._data);
                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().permissionBuyable);
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0515:
                                                                                                                                                                                                                                                   addr0511:
                                                                                                                                                                                                                                                   if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr0549:
                                                                                                                                                                                                                                                         _loc2_ = true;
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0550:
                                                                                                                                                                                                                                                            _loc1_.blueprintVO = this._data;
                                                                                                                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.center.data = _loc1_;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr056d);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0550);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr056d:
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0550);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0549);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0515);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0511);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr04c1);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr04c0);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr04ad);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr04ae);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr04d5);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr04d6);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04c5);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr049f);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04d9);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04d5);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0442);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04c5);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04c1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04d6);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0442);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04ae);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04d6);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04a3);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0420);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04d9);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04c8);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04c1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03d2);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0498);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr03b1:
                                                                                                                                                            §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                                                            if(!(_loc4_ && Boolean(this)))
                                                                                                                                                            {
                                                                                                                                                               addr03ca:
                                                                                                                                                               §§pop().toolTip = §§pop();
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr03d2);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04d9);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04c8);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0453);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr036c:
                                                                                                                                                      §§pop().imageNameRight = §§pop();
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.buildNowButton);
                                                                                                                                                         if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                         {
                                                                                                                                                            addr0387:
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(_loc5_ || Boolean(_loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr0396:
                                                                                                                                                               §§pop().showSparkle = §§pop();
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr039f:
                                                                                                                                                                  §§push(this.buildNowButton);
                                                                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr03b1);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr049f);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03d2);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04c0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr049f);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04d9);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03e4);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr0357:
                                                                                                                                                §§push(this.buildNowButton);
                                                                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr036c);
                                                                                                                                                   §§push("layer_cc_icon");
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr0387);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0345:
                                                                                                                                             addr033f:
                                                                                                                                             addr033c:
                                                                                                                                             if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0357);
                                                                                                                                                }
                                                                                                                                                §§goto(addr039f);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr03d2);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0345);
                                                                                                                                    }
                                                                                                                                    §§goto(addr033f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr033c);
                                                                                                                              }
                                                                                                                              §§goto(addr02d7);
                                                                                                                           }
                                                                                                                           §§goto(addr032c);
                                                                                                                           addr024f:
                                                                                                                           addr024e:
                                                                                                                        }
                                                                                                                        §§goto(addr04a3);
                                                                                                                     }
                                                                                                                     §§goto(addr03b1);
                                                                                                                  }
                                                                                                                  §§goto(addr0301);
                                                                                                               }
                                                                                                               §§goto(addr036c);
                                                                                                            }
                                                                                                            §§goto(addr049f);
                                                                                                         }
                                                                                                         §§goto(addr026d);
                                                                                                      }
                                                                                                      §§goto(addr03ca);
                                                                                                   }
                                                                                                   §§goto(addr02bd);
                                                                                                }
                                                                                                §§goto(addr03d2);
                                                                                             }
                                                                                             §§goto(addr025c);
                                                                                          }
                                                                                          §§goto(addr0254);
                                                                                       }
                                                                                       §§goto(addr0253);
                                                                                    }
                                                                                    §§goto(addr0250);
                                                                                 }
                                                                                 §§goto(addr024f);
                                                                              }
                                                                              §§goto(addr024e);
                                                                           }
                                                                           §§goto(addr04a3);
                                                                        }
                                                                        §§goto(addr049f);
                                                                     }
                                                                     §§goto(addr0357);
                                                                  }
                                                                  §§goto(addr021f);
                                                               }
                                                               §§goto(addr0387);
                                                            }
                                                            §§goto(addr03d2);
                                                         }
                                                         §§goto(addr02ce);
                                                      }
                                                      §§goto(addr023a);
                                                   }
                                                   §§goto(addr01ce);
                                                }
                                                §§goto(addr01f3);
                                             }
                                             §§goto(addr00ef);
                                          }
                                          §§goto(addr04d9);
                                       }
                                       §§goto(addr032c);
                                    }
                                    §§goto(addr0313);
                                 }
                                 §§goto(addr03d2);
                              }
                              §§goto(addr0396);
                           }
                           §§goto(addr014f);
                        }
                        §§goto(addr01ce);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(!_loc4_)
                        {
                           §§push(true);
                           if(_loc5_ || Boolean(_loc1_))
                           {
                              §§pop().enabled = §§pop();
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§goto(addr01ce);
                              }
                              §§goto(addr02d7);
                           }
                           §§goto(addr04c0);
                        }
                     }
                     §§goto(addr03e4);
                  }
                  §§goto(addr02a9);
               }
               §§goto(addr033f);
            }
            §§goto(addr033c);
         }
         §§goto(addr01ce);
      }
      
      private function _ArchitectTemplate_Powerplant_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 25;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0064:
                        _loc1_.top = -9;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_LocaLabel1_i()];
                           if(!_loc2_)
                           {
                              addr0093:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  addr00ab:
                  return _loc1_;
               }
               §§goto(addr0093);
            }
            §§goto(addr00a7);
         }
         §§goto(addr0064);
      }
      
      private function _ArchitectTemplate_Powerplant_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.maxWidth = 690;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_)
               {
                  addr0049:
                  _loc1_.styleName = "flavorText";
                  if(!_loc2_)
                  {
                     _loc1_.id = "flavorText";
                     if(!_loc2_)
                     {
                        addr005f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0076:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr007f:
                                 this.flavorText = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr0091:
                                    BindingManager.executeBindings(this,"flavorText",this.flavorText);
                                 }
                                 §§goto(addr009e);
                              }
                              §§goto(addr0091);
                           }
                           addr009e:
                           return _loc1_;
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr005f);
            }
            §§goto(addr0049);
         }
         §§goto(addr007f);
      }
      
      private function _ArchitectTemplate_Powerplant_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 240;
            if(!_loc2_)
            {
               _loc1_.height = 300;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.left = 4;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 10;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_StickyNoteComponent1_i(),this._ArchitectTemplate_Powerplant_BuildingCostComponent1_i(),this._ArchitectTemplate_Powerplant_BuildingConstructionStepsComponent1_i()];
                        addr006b:
                        if(_loc3_)
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr006b);
            }
            addr00aa:
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _ArchitectTemplate_Powerplant_StickyNoteComponent1_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.width = 226;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = 88;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.height = 120;
                  if(!_loc3_)
                  {
                     _loc1_.left = 8;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Powerplant_Array4_c);
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.id = "restrictionGroup";
                              if(!_loc3_)
                              {
                                 addr00a5:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00be:
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          addr00c7:
                                          this.restrictionGroup = _loc1_;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr00d9:
                                             BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00e6);
                           }
                           §§goto(addr00d9);
                        }
                        addr00e6:
                        return _loc1_;
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00a5);
            }
            §§goto(addr00be);
         }
         §§goto(addr00c7);
      }
      
      private function _ArchitectTemplate_Powerplant_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Powerplant_DynamicImageButton1_i(),this._ArchitectTemplate_Powerplant_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Powerplant_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc3_)
            {
               _loc1_.right = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 0;
                  if(!_loc3_)
                  {
                     addr0051:
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(_loc2_)
                     {
                        _loc1_.id = "restrictionFeatureButton";
                        if(_loc2_)
                        {
                           addr006c:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr009d);
                        }
                        addr008c:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr009d:
                           this.restrictionFeatureButton = _loc1_;
                           if(!_loc3_)
                           {
                              addr00a7:
                              BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr006c);
               }
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr0051);
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
      
      private function _ArchitectTemplate_Powerplant_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.top = 9;
               if(!_loc2_)
               {
                  §§goto(addr0052);
               }
               §§goto(addr0068);
            }
            §§goto(addr007c);
         }
         addr0052:
         _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_PostitHeaderComponent1_i(),this._ArchitectTemplate_Powerplant_HGroup2_c()];
         if(_loc3_)
         {
            addr0068:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr007c:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Powerplant_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.id = "restrictionHeader";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr006b:
                        this.restrictionHeader = _loc1_;
                        if(_loc3_)
                        {
                           addr0075:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr0075);
                  }
                  addr0082:
                  return _loc1_;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0075);
      }
      
      private function _ArchitectTemplate_Powerplant_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "left";
            if(_loc2_)
            {
               addr0034:
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_BriskImageDynaLib1_i(),this._ArchitectTemplate_Powerplant_LocaLabel2_i()];
                  if(!_loc3_)
                  {
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr006b);
            }
            §§goto(addr0077);
         }
         §§goto(addr0034);
      }
      
      private function _ArchitectTemplate_Powerplant_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(_loc2_)
               {
                  _loc1_.id = "restrictionGfx";
                  if(_loc2_)
                  {
                     addr004c:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr006c:
                              this.restrictionGfx = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                           }
                           §§goto(addr008b);
                        }
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr006c);
            }
            §§goto(addr004c);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Powerplant_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr003e:
               _loc1_.id = "restrictionName";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0073:
                           this.restrictionName = _loc1_;
                           if(!_loc2_)
                           {
                              addr007d:
                              BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                           }
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0073);
               }
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _ArchitectTemplate_Powerplant_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.height = 115;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0077);
               }
               addr0064:
               _loc1_.id = "costComponent";
               if(_loc2_ || _loc3_)
               {
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0096:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr00a7);
                        }
                        §§goto(addr00b1);
                     }
                  }
                  addr00a7:
                  this.costComponent = _loc1_;
                  if(_loc2_)
                  {
                     addr00b1:
                     BindingManager.executeBindings(this,"costComponent",this.costComponent);
                  }
                  §§goto(addr00be);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr00a7);
         }
         §§goto(addr0096);
      }
      
      private function _ArchitectTemplate_Powerplant_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 130;
               if(_loc3_)
               {
                  addr004c:
                  _loc1_.bottom = -10;
                  if(!_loc2_)
                  {
                     addr0057:
                     _loc1_.id = "constructionStepsComponent";
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr006a);
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0057);
            }
            addr006a:
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
            this.constructionStepsComponent = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr009d:
               BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _ArchitectTemplate_Powerplant_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.left = 240;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.right = 220;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.height = 300;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.bottom = 15;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0083:
                        _loc1_.verticalAlign = "top";
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.gap = 15;
                              if(_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_DetailsCenterComponent1_i(),this._ArchitectTemplate_Powerplant_MultistateButton1_i()];
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00dc:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr00e8:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00dc);
                        }
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00e8);
            }
            addr00ec:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _ArchitectTemplate_Powerplant_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.id = "center";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr005b:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0079:
                        this.center = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr008b:
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr008b);
                  }
                  addr0097:
                  return _loc1_;
               }
               §§goto(addr0079);
            }
            §§goto(addr005b);
         }
         §§goto(addr0079);
      }
      
      private function _ArchitectTemplate_Powerplant_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.width = 204;
            if(!_loc3_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!_loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0055:
                     _loc1_.id = "buildNowButton";
                     if(!_loc3_)
                     {
                        addr0060:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0088:
                                 this.buildNowButton = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0092:
                                    BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0055);
         }
         §§goto(addr0060);
      }
      
      private function _ArchitectTemplate_Powerplant_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 220;
            if(_loc3_)
            {
               addr0032:
               _loc1_.height = 300;
               if(!_loc2_)
               {
                  _loc1_.right = -4;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.bottom = 10;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007a:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_StickyNoteComponent2_c()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009e);
            }
            §§goto(addr007a);
         }
         §§goto(addr0032);
      }
      
      private function _ArchitectTemplate_Powerplant_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 150;
               if(_loc3_)
               {
                  _loc1_.bottom = 120;
                  if(!_loc2_)
                  {
                     _loc1_.tapeTop = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.right = 15;
                        if(!_loc2_)
                        {
                           addr0085:
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Powerplant_Array9_c);
                           if(!_loc2_)
                           {
                              addr009a:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00a6:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr009a);
                  }
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr00a6);
         }
         §§goto(addr0085);
      }
      
      private function _ArchitectTemplate_Powerplant_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Powerplant_VGroup3_i(),this._ArchitectTemplate_Powerplant_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Powerplant_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.paddingTop = 5;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_PostitHeaderComponent2_i(),this._ArchitectTemplate_Powerplant_HGroup3_c()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr008d);
               }
               addr0076:
               _loc1_.id = "effectsGroup";
               if(!_loc3_)
               {
                  addr008d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr0099);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00a2);
               }
               addr0099:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr00a2:
                  this.effectsGroup = _loc1_;
                  if(_loc2_)
                  {
                     addr00ac:
                     BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
                  }
               }
               §§goto(addr00b9);
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr0099);
      }
      
      private function _ArchitectTemplate_Powerplant_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "effectsHeader";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0055:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr007f:
                           this.effectsHeader = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr0091:
                              BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0091);
            }
            §§goto(addr0055);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Powerplant_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.paddingTop = 10;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Powerplant_List1_i()];
                     if(!(_loc3_ && _loc3_))
                     {
                        addr008e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr009a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr009a);
                  }
               }
               addr009e:
               return _loc1_;
            }
            §§goto(addr008e);
         }
         §§goto(addr009a);
      }
      
      private function _ArchitectTemplate_Powerplant_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Powerplant_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "effectsList";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0096:
                              this.effectsList = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 BindingManager.executeBindings(this,"effectsList",this.effectsList);
                              }
                           }
                        }
                        §§goto(addr00b5);
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0065);
            }
            addr00b5:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _ArchitectTemplate_Powerplant_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || _loc2_)
         {
            _loc1_.generator = ArchitectImageValueItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Powerplant_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_)
            {
               _loc1_.right = 0;
               if(!_loc2_)
               {
                  _loc1_.top = -10;
                  if(_loc3_ || _loc2_)
                  {
                     addr0050:
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "effectFeatureButton";
                        if(!_loc2_)
                        {
                           addr0073:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr009d:
                                    this.effectFeatureButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                                    }
                                 }
                                 §§goto(addr00b4);
                              }
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr0050);
         }
         addr00b4:
         return _loc1_;
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_Powerplant_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._597326554buildNowButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1364013995center = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0057);
            }
         }
         addr0074:
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1976000313constructionStepsComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0065);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1253508016costComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
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
               if(_loc4_)
               {
                  this._1768900535effectFeatureButton = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0059);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._490397341effectsGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsHeader() : PostitHeaderComponent
      {
         return this._1961361873effectsHeader;
      }
      
      public function set effectsHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1961361873effectsHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1961361873effectsHeader = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1678527680effectsList = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
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
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
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
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGfx() : BriskImageDynaLib
      {
         return this._294445069restrictionGfx;
      }
      
      public function set restrictionGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._294445069restrictionGfx;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._294445069restrictionGfx = param1;
                  if(!_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006a);
               }
            }
            addr0079:
            return;
         }
         §§goto(addr005b);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._505777645restrictionGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
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
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionHeader() : PostitHeaderComponent
      {
         return this._1516951929restrictionHeader;
      }
      
      public function set restrictionHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1516951929restrictionHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1516951929restrictionHeader = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._538066039restrictionName = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0080);
            }
            addr008f:
            return;
         }
         §§goto(addr0069);
      }
   }
}

