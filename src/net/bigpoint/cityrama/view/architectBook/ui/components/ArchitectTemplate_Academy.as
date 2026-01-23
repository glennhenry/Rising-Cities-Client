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
   
   public class ArchitectTemplate_Academy extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Academy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && ArchitectTemplate_Academy))
      {
         NAME = "ArchitectTemplate_Academy";
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
      
      public function ArchitectTemplate_Academy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr003a:
                  this.percentWidth = 100;
                  if(_loc2_ || _loc1_)
                  {
                     this.percentHeight = 100;
                     if(!_loc1_)
                     {
                        this.mxmlContent = [this._ArchitectTemplate_Academy_HGroup1_c(),this._ArchitectTemplate_Academy_Group2_c(),this._ArchitectTemplate_Academy_VGroup2_c(),this._ArchitectTemplate_Academy_Group3_c()];
                        if(_loc2_)
                        {
                           addr0082:
                           this.addEventListener("creationComplete",this.___ArchitectTemplate_Academy_Group1_creationComplete);
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr0082);
            }
            addr008e:
            return;
         }
         §§goto(addr003a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0041:
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
         if(_loc3_)
         {
            this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(_loc3_)
            {
               §§push(this.buildNowButton);
               if(_loc3_)
               {
                  §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0074);
            }
            §§goto(addr00bd);
         }
         addr0059:
         this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
         if(!_loc4_)
         {
            addr0074:
            this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
            addr0070:
            if(_loc3_ || _loc2_)
            {
               this.restrictionFeatureButton.visible = this.restrictionFeatureButton.includeInLayout = false;
               if(_loc3_)
               {
                  this.setupCenter();
                  if(!_loc4_)
                  {
                     addr00bd:
                     this.updateAll();
                  }
               }
            }
         }
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
         if(!_loc2_)
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._data = param1.bluePrintVO;
            if(_loc3_ || Boolean(param1))
            {
               this._veryData = param1;
               if(_loc3_ || _loc2_)
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.flavorText.text = this._veryData.descriptionVo.descriptionText;
            if(!(_loc2_ && _loc1_))
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc1_)
               {
                  if(§§pop() != "")
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.restrictionGfx);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this._veryData);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(§§pop().buildableLandVO);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!_loc2_)
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr00a5:
                                       §§push(this.restrictionGfx);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00b6:
                                          §§push(this._veryData);
                                          if(_loc1_)
                                          {
                                             addr00bf:
                                             §§push(§§pop().buildableLandVO);
                                             if(!_loc2_)
                                             {
                                                addr00c7:
                                                §§push(§§pop().visualName);
                                                if(_loc1_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr00eb:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00e9:
                                                      addr00e6:
                                                      addr00e2:
                                                      if(!_loc2_)
                                                      {
                                                         addr00f2:
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            §§push(this.restrictionGroup);
                                                            if(_loc1_)
                                                            {
                                                               §§push(true);
                                                               if(_loc1_ || Boolean(this))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr013d:
                                                                     §§push(this._data);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 var _temp_12:* = §§pop();
                                                                                 §§push(_temp_12);
                                                                                 if(!_temp_12)
                                                                                 {
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          addr0189:
                                                                                          §§push(this._data);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             addr019b:
                                                                                             addr0195:
                                                                                             addr0192:
                                                                                             §§push(§§pop().state == BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr01a1:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc1_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(this.costComponent);
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         §§push("noCosts");
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(_loc1_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(this.costComponent);
                                                                                                               if(_loc1_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§pop().invalidateProperties();
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §§goto(addr0220);
                                                                                                                  }
                                                                                                                  §§goto(addr029f);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0204:
                                                                                                                  §§pop().currentState = "hasCosts";
                                                                                                                  addr0201:
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr0210:
                                                                                                                     this.costComponent.setData(this._veryData.costVOList);
                                                                                                                     addr020c:
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr0220:
                                                                                                                        addr0227:
                                                                                                                        addr0224:
                                                                                                                        if(!this._data.hasConstructionSteps)
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              addr0230:
                                                                                                                              §§push(this.constructionStepsComponent);
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 §§push("noSteps");
                                                                                                                                 if(_loc1_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§pop().currentState = §§pop();
                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr029f:
                                                                                                                                       this.effectsList.dataProvider = this._veryData.consequenceVOList;
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr02ba:
                                                                                                                                          this.setTooltips();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr02c0);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0271:
                                                                                                                                    §§pop().currentState = §§pop();
                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr028f);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr02ba);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr026e:
                                                                                                                                 §§push("hasSteps");
                                                                                                                              }
                                                                                                                              §§goto(addr0271);
                                                                                                                           }
                                                                                                                           §§goto(addr029f);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.constructionStepsComponent);
                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr026e);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr028f:
                                                                                                                        this.constructionStepsComponent.setData(this._veryData.materialVOList);
                                                                                                                        §§goto(addr028b);
                                                                                                                     }
                                                                                                                     §§goto(addr0230);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr028b);
                                                                                                            }
                                                                                                            §§goto(addr029f);
                                                                                                         }
                                                                                                         §§goto(addr0204);
                                                                                                      }
                                                                                                      §§goto(addr0210);
                                                                                                   }
                                                                                                   §§goto(addr029f);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.costComponent);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr0201);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0210);
                                                                                             }
                                                                                             §§goto(addr0227);
                                                                                          }
                                                                                          §§goto(addr0224);
                                                                                       }
                                                                                       §§goto(addr0220);
                                                                                    }
                                                                                    §§goto(addr0227);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01a1);
                                                                           }
                                                                           §§goto(addr019b);
                                                                        }
                                                                        §§goto(addr0195);
                                                                     }
                                                                     §§goto(addr0192);
                                                                  }
                                                                  §§goto(addr029f);
                                                               }
                                                               else
                                                               {
                                                                  addr0136:
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr013d);
                                                                  }
                                                               }
                                                               §§goto(addr0189);
                                                            }
                                                            else
                                                            {
                                                               addr0135:
                                                               §§push(false);
                                                            }
                                                            §§goto(addr0136);
                                                         }
                                                         §§goto(addr029f);
                                                      }
                                                      §§goto(addr020c);
                                                   }
                                                   §§goto(addr00f2);
                                                }
                                                §§goto(addr00eb);
                                             }
                                             §§goto(addr00e9);
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr00e2);
                                    }
                                    §§goto(addr02ba);
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00b6);
                     }
                     addr028b:
                     if(!_loc2_)
                     {
                        §§goto(addr029f);
                     }
                     addr02c0:
                     return;
                  }
                  §§push(this.restrictionGroup);
                  §§goto(addr0135);
               }
               §§goto(addr0195);
            }
            §§goto(addr0230);
         }
         §§goto(addr00a5);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
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
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(this.center);
            if(_loc3_ || _loc3_)
            {
               §§push("tooltipLeftScroll");
               if(_loc3_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || Boolean(this))
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr008d:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr008c:
                        addr0089:
                        if(!_loc4_)
                        {
                           this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                           if(!_loc4_)
                           {
                              §§push(this._data);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(§§pop().permissionBuyable);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       var _temp_9:* = §§pop();
                                       §§push(_temp_9);
                                       if(_temp_9)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§goto(addr00fd);
                                          }
                                       }
                                       §§goto(addr0121);
                                    }
                                    addr00fd:
                                    §§pop();
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr0121:
                                       addr0110:
                                       addr010c:
                                       §§push(this._data.locked);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr0120:
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             addr013e:
                                             this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                             if(_loc3_)
                                             {
                                                addr0154:
                                                this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                             }
                                          }
                                          §§goto(addr0165);
                                       }
                                       §§goto(addr013e);
                                    }
                                    §§goto(addr0165);
                                 }
                                 §§goto(addr0120);
                              }
                              §§goto(addr0110);
                           }
                           §§goto(addr013e);
                        }
                        §§goto(addr0154);
                     }
                     §§goto(addr010c);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr008c);
            }
            §§goto(addr0089);
         }
         addr0165:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc1_ || _loc2_)
            {
               this.setupCenter();
               if(!_loc2_)
               {
                  this.setTooltips();
                  if(!(_loc2_ && _loc1_))
                  {
                     addr004f:
                     this.updateAll();
                  }
                  §§goto(addr0054);
               }
               §§goto(addr004f);
            }
         }
         addr0054:
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this._data);
            if(_loc5_)
            {
               §§push(§§pop().state);
               if(!_loc4_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(this.buildNowButton);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(true);
                              if(!_loc4_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(_loc5_)
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(this.buildNowButton);
                                             if(_loc5_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc5_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc5_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc5_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc5_)
                                                                              {
                                                                                 var _temp_8:* = §§pop();
                                                                                 §§push(_temp_8);
                                                                                 §§push(_temp_8);
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr015f:
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr02eb:
                                                                                                §§pop().toolTip = §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr033c:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr0346:
                                                                                                      §§push(false);
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         addr0355:
                                                                                                         §§pop().showSparkle = §§pop();
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr0379:
                                                                                                                  §§pop().toolTip = §§pop();
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr0389:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr0393:
                                                                                                                        §§push(this.buildNowButton);
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr03a5:
                                                                                                                           §§push(Boolean(§§pop().enabled));
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr03b7:
                                                                                                                              var _temp_15:* = §§pop();
                                                                                                                              §§push(_temp_15);
                                                                                                                              §§push(_temp_15);
                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr03df:
                                                                                                                                          §§push(this._data);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().locked);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr0401:
                                                                                                                                                   §§pop().enabled = §§pop();
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr040a:
                                                                                                                                                      §§push(this.buildNowButton);
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr0414:
                                                                                                                                                         §§push(this._data);
                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().userCanAfford);
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr0446:
                                                                                                                                                                  var _temp_22:* = §§pop();
                                                                                                                                                                  §§push(_temp_22);
                                                                                                                                                                  §§push(_temp_22);
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr044d:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0457:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(_loc5_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              addr046a:
                                                                                                                                                                              addr0466:
                                                                                                                                                                              §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr047c:
                                                                                                                                                                                 var _temp_25:* = §§pop();
                                                                                                                                                                                 addr047d:
                                                                                                                                                                                 §§push(_temp_25);
                                                                                                                                                                                 if(_temp_25)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr048f:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr04ad:
                                                                                                                                                                                       addr0490:
                                                                                                                                                                                       addr0494:
                                                                                                                                                                                       addr0497:
                                                                                                                                                                                       §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04ac:
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().showPlus = §§pop();
                                                                                                                                                                                       addr04b0:
                                                                                                                                                                                       var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                                       var _loc2_:Boolean = false;
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this._data);
                                                                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().permissionBuyable);
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04f4:
                                                                                                                                                                                                      if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr051d:
                                                                                                                                                                                                            _loc2_ = true;
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0524:
                                                                                                                                                                                                               _loc1_.blueprintVO = this._data;
                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr053a:
                                                                                                                                                                                                                  this.center.data = _loc1_;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0541);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr053a);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0524);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr0541:
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0524);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr051d);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04f4);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr053a);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04ac);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04ad);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr048f);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0490);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04ad);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr047c);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr047d);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0457);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0446);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0494);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0490);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04b0);
                                                                                                                                                }
                                                                                                                                                §§goto(addr048f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04ac);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0494);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0414);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04ad);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0401);
                                                                                                                              }
                                                                                                                              §§goto(addr044d);
                                                                                                                           }
                                                                                                                           §§goto(addr0446);
                                                                                                                        }
                                                                                                                        §§goto(addr046a);
                                                                                                                     }
                                                                                                                     §§goto(addr03df);
                                                                                                                  }
                                                                                                                  §§goto(addr04b0);
                                                                                                               }
                                                                                                               §§goto(addr0497);
                                                                                                            }
                                                                                                            §§goto(addr0414);
                                                                                                         }
                                                                                                         §§goto(addr040a);
                                                                                                      }
                                                                                                      §§goto(addr048f);
                                                                                                   }
                                                                                                   §§goto(addr03df);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0389);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr021c:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   §§push(this._data);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop().state);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0292:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr02d2:
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr02eb);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0379);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0393);
                                                                                                                                 }
                                                                                                                                 §§goto(addr040a);
                                                                                                                              }
                                                                                                                              §§goto(addr03b7);
                                                                                                                           }
                                                                                                                           §§goto(addr02d2);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr032b:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§goto(addr033c);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0389);
                                                                                                                  }
                                                                                                                  §§goto(addr02d2);
                                                                                                               }
                                                                                                               §§goto(addr040a);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0304:
                                                                                                               addr02fe:
                                                                                                               addr02fb:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        addr0328:
                                                                                                                        §§goto(addr032b);
                                                                                                                        §§push("layer_cc_icon");
                                                                                                                     }
                                                                                                                     §§goto(addr0466);
                                                                                                                  }
                                                                                                                  §§goto(addr040a);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0389);
                                                                                                         }
                                                                                                         §§goto(addr0304);
                                                                                                      }
                                                                                                      §§goto(addr02fe);
                                                                                                   }
                                                                                                   §§goto(addr02fb);
                                                                                                }
                                                                                                §§goto(addr0292);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0379);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr021b:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr021c);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0218:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr021b);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0217:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0218);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0216:
                                                                                 var _temp_41:* = §§pop();
                                                                                 §§push(_temp_41);
                                                                                 §§push(_temp_41);
                                                                              }
                                                                              §§goto(addr0217);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0214:
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr0216);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr020a:
                                                                           §§push(this.buildNowButton);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr0214);
                                                                           }
                                                                        }
                                                                        §§goto(addr03a5);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01c4:
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           §§push("gui_resources_icons");
                                                                           if(!(_loc4_ && Boolean(_loc1_)))
                                                                           {
                                                                              §§pop().libNameRight = §§pop();
                                                                              if(_loc5_ || Boolean(this))
                                                                              {
                                                                                 addr01f8:
                                                                                 §§push(this.buildNowButton);
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr020a);
                                                                                 }
                                                                                 §§goto(addr0466);
                                                                              }
                                                                              §§goto(addr04b0);
                                                                           }
                                                                           §§goto(addr032b);
                                                                        }
                                                                     }
                                                                     §§goto(addr0414);
                                                                  }
                                                                  §§goto(addr032b);
                                                               }
                                                               §§goto(addr02d2);
                                                            }
                                                            §§goto(addr01f8);
                                                         }
                                                         §§goto(addr032b);
                                                      }
                                                      §§goto(addr0328);
                                                   }
                                                   §§goto(addr0389);
                                                }
                                                §§goto(addr015f);
                                             }
                                             §§goto(addr0490);
                                          }
                                          §§goto(addr0389);
                                       }
                                       §§goto(addr02eb);
                                    }
                                    §§goto(addr0346);
                                 }
                                 §§goto(addr01f8);
                              }
                              §§goto(addr04ac);
                           }
                           §§goto(addr0490);
                        }
                        §§goto(addr01c4);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(_loc5_)
                        {
                           §§push(true);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§pop().enabled = §§pop();
                              if(_loc5_ || Boolean(_loc1_))
                              {
                                 §§push(this.buildNowButton);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                    if(_loc5_)
                                    {
                                       §§pop().label = §§pop();
                                       if(_loc5_)
                                       {
                                          §§goto(addr01c4);
                                       }
                                       §§goto(addr01f8);
                                    }
                                    §§goto(addr0379);
                                 }
                                 §§goto(addr0414);
                              }
                              §§goto(addr04b0);
                           }
                           §§goto(addr0355);
                        }
                     }
                     §§goto(addr0466);
                  }
                  §§goto(addr0304);
               }
               §§goto(addr02fe);
            }
            §§goto(addr02fb);
         }
         §§goto(addr0389);
      }
      
      private function _ArchitectTemplate_Academy_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 25;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.top = -9;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_LocaLabel1_i()];
                           addr0077:
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr009b);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr00af);
               }
               addr009b:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00af:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr00af);
      }
      
      private function _ArchitectTemplate_Academy_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxWidth = 690;
            if(_loc3_)
            {
               addr002e:
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc3_)
                  {
                     addr0059:
                     _loc1_.id = "flavorText";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008d);
                              }
                              §§goto(addr0097);
                           }
                        }
                        addr008d:
                        this.flavorText = _loc1_;
                        if(_loc3_)
                        {
                           addr0097:
                           BindingManager.executeBindings(this,"flavorText",this.flavorText);
                        }
                        §§goto(addr00a4);
                     }
                  }
                  addr00a4:
                  return _loc1_;
               }
               §§goto(addr0059);
            }
            §§goto(addr0078);
         }
         §§goto(addr002e);
      }
      
      private function _ArchitectTemplate_Academy_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 240;
            if(_loc3_)
            {
               _loc1_.height = 300;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.left = 4;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.bottom = 10;
                     addr005c:
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_StickyNoteComponent1_i(),this._ArchitectTemplate_Academy_BuildingCostComponent1_i(),this._ArchitectTemplate_Academy_BuildingConstructionStepsComponent1_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
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
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr005c);
            }
         }
         §§goto(addr009c);
      }
      
      private function _ArchitectTemplate_Academy_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 226;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 88;
               if(!_loc2_)
               {
                  addr0045:
                  _loc1_.height = 120;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.left = 8;
                     if(!_loc2_)
                     {
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Academy_Array4_c);
                           if(_loc3_ || _loc3_)
                           {
                              addr0092:
                              _loc1_.id = "restrictionGroup";
                              if(_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00b4:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00bd:
                                          this.restrictionGroup = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00c7:
                                             BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                                          }
                                       }
                                       §§goto(addr00d4);
                                    }
                                    §§goto(addr00c7);
                                 }
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00c7);
                        }
                        addr00d4:
                        return _loc1_;
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00bd);
            }
            §§goto(addr00c7);
         }
         §§goto(addr0045);
      }
      
      private function _ArchitectTemplate_Academy_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Academy_DynamicImageButton1_i(),this._ArchitectTemplate_Academy_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Academy_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.right = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(!_loc3_)
                     {
                        addr007a:
                        _loc1_.id = "restrictionFeatureButton";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a6:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00af);
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                        }
                        addr00af:
                        this.restrictionFeatureButton = _loc1_;
                        if(_loc2_)
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                        }
                        §§goto(addr00c6);
                     }
                  }
                  §§goto(addr00a6);
               }
               addr00c6:
               return _loc1_;
            }
            §§goto(addr007a);
         }
         §§goto(addr00b9);
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
      
      private function _ArchitectTemplate_Academy_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 9;
               if(!(_loc2_ && _loc2_))
               {
                  addr0064:
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_PostitHeaderComponent1_i(),this._ArchitectTemplate_Academy_HGroup2_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0082);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0082);
            }
            §§goto(addr0064);
         }
         addr0082:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr008e:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Academy_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_)
         {
            _loc1_.id = "restrictionHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0061:
                        this.restrictionHeader = _loc1_;
                        if(_loc2_)
                        {
                           addr006b:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0061);
            }
         }
         addr0078:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Academy_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "left";
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_BriskImageDynaLib1_i(),this._ArchitectTemplate_Academy_LocaLabel2_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr006f);
               }
               addr0063:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr006f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _ArchitectTemplate_Academy_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005a:
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
                              addr0091:
                              this.restrictionGfx = _loc1_;
                              if(!_loc2_)
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0091);
                  }
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr0091);
         }
         §§goto(addr005a);
      }
      
      private function _ArchitectTemplate_Academy_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc3_)
            {
               _loc1_.id = "restrictionName";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr0070);
            }
            addr0067:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr0070:
               this.restrictionName = _loc1_;
               if(!_loc2_)
               {
                  addr007a:
                  BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
               }
            }
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _ArchitectTemplate_Academy_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.top = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 115;
                  §§goto(addr0047);
               }
               §§goto(addr0079);
            }
            addr0047:
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "costComponent";
               if(_loc2_ || _loc3_)
               {
                  addr0079:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0090:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0099);
                        }
                     }
                     §§goto(addr00ab);
                  }
                  addr0099:
                  this.costComponent = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr00ab:
                     BindingManager.executeBindings(this,"costComponent",this.costComponent);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0090);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr00ab);
      }
      
      private function _ArchitectTemplate_Academy_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 130;
               if(!_loc3_)
               {
                  _loc1_.bottom = -10;
                  if(_loc2_)
                  {
                     addr0050:
                     _loc1_.id = "constructionStepsComponent";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0067:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0084:
                                 this.constructionStepsComponent = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr0096:
                                    BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr0096);
                           }
                           addr00a3:
                           return _loc1_;
                        }
                        §§goto(addr0084);
                     }
                  }
                  §§goto(addr0067);
               }
            }
            §§goto(addr0096);
         }
         §§goto(addr0050);
      }
      
      private function _ArchitectTemplate_Academy_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.left = 240;
            if(_loc2_ || _loc3_)
            {
               _loc1_.right = 220;
               if(!_loc3_)
               {
                  addr0046:
                  _loc1_.height = 300;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.bottom = 15;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00a5);
               }
               addr0077:
               _loc1_.verticalAlign = "top";
               if(_loc2_ || _loc2_)
               {
                  addr0089:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     §§goto(addr0093);
                  }
                  §§goto(addr00a5);
               }
               addr0093:
               _loc1_.gap = 15;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_DetailsCenterComponent1_i(),this._ArchitectTemplate_Academy_MultistateButton1_i()];
                  addr00a5:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0089);
         }
         §§goto(addr0046);
      }
      
      private function _ArchitectTemplate_Academy_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(!_loc2_)
         {
            _loc1_.id = "center";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0072:
                        this.center = _loc1_;
                        if(!_loc2_)
                        {
                           addr007c:
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0072);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _ArchitectTemplate_Academy_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.width = 204;
            if(_loc2_ || _loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "buildNowButton";
                     if(_loc2_ || _loc2_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr009a:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr00a3:
                                 this.buildNowButton = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                                 }
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr0079);
               }
               addr00ba:
               return _loc1_;
            }
            §§goto(addr009a);
         }
         §§goto(addr0079);
      }
      
      private function _ArchitectTemplate_Academy_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 220;
            if(_loc2_)
            {
               _loc1_.height = 300;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.right = -4;
                  if(_loc2_)
                  {
                     addr0056:
                     _loc1_.bottom = 10;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_StickyNoteComponent2_c()];
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0086);
                        }
                        §§goto(addr009a);
                     }
                  }
                  addr0086:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr009a:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr0056);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Academy_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 150;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.bottom = 120;
                  if(!_loc2_)
                  {
                     _loc1_.tapeTop = true;
                     if(!_loc2_)
                     {
                        addr006c:
                        _loc1_.right = 15;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Academy_Array9_c);
                           addr007e:
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr00a8);
                           }
                           §§goto(addr00bc);
                        }
                        addr00a8:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00bc:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00c0);
                     }
                     addr00c0:
                     return _loc1_;
                  }
                  §§goto(addr00a8);
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr007e);
      }
      
      private function _ArchitectTemplate_Academy_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Academy_VGroup3_i(),this._ArchitectTemplate_Academy_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Academy_VGroup3_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.paddingTop = 5;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_PostitHeaderComponent2_i(),this._ArchitectTemplate_Academy_HGroup3_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005e:
                     _loc1_.id = "effectsGroup";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0098:
                                 this.effectsGroup = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
                                 }
                              }
                              §§goto(addr00af);
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00a2);
                  }
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr005e);
         }
         §§goto(addr008f);
      }
      
      private function _ArchitectTemplate_Academy_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.id = "effectsHeader";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           addr007b:
                           this.effectsHeader = _loc1_;
                           if(_loc2_)
                           {
                              addr0085:
                              BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr007b);
               }
            }
            §§goto(addr0085);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Academy_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.paddingTop = 10;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr007f);
               }
               addr006f:
               _loc1_.mxmlContent = [this._ArchitectTemplate_Academy_List1_i()];
               if(!_loc2_)
               {
                  addr007f:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr008f);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _ArchitectTemplate_Academy_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Academy_ClassFactory1_c();
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
               if(_loc3_)
               {
                  _loc1_.id = "effectsList";
                  if(_loc3_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
                  addr0086:
                  this.effectsList = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0098:
                     BindingManager.executeBindings(this,"effectsList",this.effectsList);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr005c);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0098);
      }
      
      private function _ArchitectTemplate_Academy_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.generator = ArchitectImageValueItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Academy_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.right = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = -10;
                  if(!_loc3_)
                  {
                     addr0061:
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(_loc2_ || _loc3_)
                     {
                        addr0079:
                        _loc1_.id = "effectFeatureButton";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr009d:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00a6);
                                 }
                                 §§goto(addr00b8);
                              }
                           }
                           addr00a6:
                           this.effectFeatureButton = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00b8:
                              BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                           }
                           return _loc1_;
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0061);
            }
            §§goto(addr0079);
         }
         §§goto(addr009d);
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
      
      public function ___ArchitectTemplate_Academy_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._597326554buildNowButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1364013995center = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0079);
            }
         }
         addr0087:
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
               if(!(_loc4_ && _loc3_))
               {
                  this._1976000313constructionStepsComponent = param1;
                  addr0046:
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
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
         §§goto(addr0046);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1253508016costComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
         }
         addr007b:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr004c:
                  this._1768900535effectFeatureButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr004c);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._490397341effectsGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1961361873effectsHeader = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
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
               if(_loc3_ || Boolean(this))
               {
                  this._1678527680effectsList = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._188635812restrictionFeatureButton = param1;
                  addr0041:
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006f);
               }
               addr0060:
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
            addr007e:
            return;
         }
         §§goto(addr0041);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._294445069restrictionGfx = param1;
                  addr003c:
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
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
         §§goto(addr003c);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._505777645restrictionGroup = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1516951929restrictionHeader = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
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
            addr0084:
            return;
         }
         §§goto(addr0075);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._538066039restrictionName = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0063);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
   }
}

