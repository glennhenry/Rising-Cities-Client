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
   
   public class ArchitectTemplate_Decoration extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Decoration";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ArchitectTemplate_Decoration";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
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
      
      public function ArchitectTemplate_Decoration()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.percentWidth = 100;
                  if(_loc1_)
                  {
                     this.percentHeight = 100;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr006f);
                     }
                  }
               }
               §§goto(addr0099);
            }
            addr006f:
            this.mxmlContent = [this._ArchitectTemplate_Decoration_HGroup1_c(),this._ArchitectTemplate_Decoration_Group2_c(),this._ArchitectTemplate_Decoration_VGroup3_c(),this._ArchitectTemplate_Decoration_VGroup4_c()];
            if(_loc1_ || _loc1_)
            {
               addr0099:
               this.addEventListener("creationComplete",this.___ArchitectTemplate_Decoration_Group1_creationComplete);
            }
            §§goto(addr00a5);
         }
         addr00a5:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr002f);
            }
            §§goto(addr0044);
         }
         addr002f:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr0044:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(_loc4_)
            {
               §§push(this.buildNowButton);
               if(_loc4_ || _loc3_)
               {
                  §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                  if(!_loc3_)
                  {
                     addr0061:
                     this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                     if(!_loc3_)
                     {
                        addr007b:
                        this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                        if(_loc4_ || _loc3_)
                        {
                           this.restrictionFeatureButton.visible = this.restrictionFeatureButton.includeInLayout = false;
                           addr0096:
                           if(!_loc3_)
                           {
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr007b);
            }
            addr00ba:
            this.setupCenter();
            if(!(_loc3_ && _loc3_))
            {
               addr00cd:
               this.updateAll();
            }
            return;
         }
         §§goto(addr0061);
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
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._data = param1.bluePrintVO;
            if(_loc3_)
            {
               this._veryData = param1;
               if(!(_loc2_ && Boolean(param1)))
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      private function updateAll() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(!_loc3_)
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(!(_loc3_ && _loc3_))
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(!_loc3_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc2_)
                     {
                        §§push(this.restrictionGfx);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this._veryData);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop().buildableLandVO);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(!_loc3_)
                                       {
                                          §§push(this._veryData);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop().visualName);
                                                if(_loc2_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      addr00ef:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00ed:
                                                      addr00ea:
                                                      addr00e6:
                                                      if(!_loc3_)
                                                      {
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            §§push(this.restrictionGroup);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(this.restrictionGroup);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(true);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     var _temp_11:* = §§pop();
                                                                     §§push(_temp_11);
                                                                     §§push(_temp_11);
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        var _loc1_:* = §§pop();
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           §§pop().includeInLayout = §§pop();
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§pop().visible = §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr01a1:
                                                                                       §§push(this._data);
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop().state);
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   var _temp_18:* = §§pop();
                                                                                                   §§push(_temp_18);
                                                                                                   if(!_temp_18)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr01f9:
                                                                                                            addr01f8:
                                                                                                            addr01f2:
                                                                                                            addr01ef:
                                                                                                            if(this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(this.costComponent);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push("noCosts");
                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§pop().currentState = §§pop();
                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                        {
                                                                                                                           addr022b:
                                                                                                                           §§push(this.costComponent);
                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§pop().invalidateProperties();
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr0296:
                                                                                                                                 this.effectsList.dataProvider = this._veryData.consequenceVOList;
                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr02b1:
                                                                                                                                    this.setTooltips();
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr02b7);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§pop().setData(this._veryData.costVOList);
                                                                                                                              addr0270:
                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0296);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr02b1);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr025c:
                                                                                                                        §§pop().currentState = §§pop();
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr0270);
                                                                                                                           §§push(this.costComponent);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr02b7);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0259:
                                                                                                                     §§push("hasCosts");
                                                                                                                  }
                                                                                                                  §§goto(addr025c);
                                                                                                               }
                                                                                                               §§goto(addr0296);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.costComponent);
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr0259);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0270);
                                                                                                         }
                                                                                                         §§goto(addr0296);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01f9);
                                                                                             }
                                                                                             §§goto(addr01f8);
                                                                                          }
                                                                                          §§goto(addr01f2);
                                                                                       }
                                                                                       §§goto(addr01ef);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr019a:
                                                                                    §§pop().visible = §§pop();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr01a1);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0296);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0198:
                                                                              }
                                                                              §§goto(addr019a);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0197:
                                                                              §§push(_loc1_);
                                                                           }
                                                                           §§goto(addr0198);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0195:
                                                                           §§pop().includeInLayout = §§pop();
                                                                        }
                                                                        §§goto(addr0197);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0194:
                                                                        _loc1_ = §§pop();
                                                                     }
                                                                     §§goto(addr0195);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0193:
                                                                     var _temp_26:* = §§pop();
                                                                     §§push(_temp_26);
                                                                     §§push(_temp_26);
                                                                  }
                                                                  §§goto(addr0194);
                                                               }
                                                               else
                                                               {
                                                                  addr0192:
                                                                  §§push(false);
                                                               }
                                                               §§goto(addr0193);
                                                            }
                                                            else
                                                            {
                                                               addr018e:
                                                               §§push(this.restrictionGroup);
                                                            }
                                                            §§goto(addr0192);
                                                         }
                                                         addr02b7:
                                                         return;
                                                      }
                                                      §§goto(addr0296);
                                                   }
                                                   §§goto(addr02b1);
                                                }
                                                §§goto(addr00ef);
                                             }
                                             §§goto(addr00ed);
                                          }
                                          §§goto(addr00ea);
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr01a1);
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr00ed);
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr00e6);
                     }
                     §§goto(addr022b);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr018e);
               }
               §§goto(addr01f2);
            }
            §§goto(addr02b1);
         }
         §§goto(addr022b);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._veryData = param1;
            if(!_loc3_)
            {
               addr0027:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0027);
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
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.center);
            if(_loc4_)
            {
               §§push("tooltipLeftScroll");
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc2_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!_loc3_)
                     {
                        addr0081:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr0080:
                        addr007d:
                        if(!_loc3_)
                        {
                           addr0096:
                           this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                           if(!_loc3_)
                           {
                              §§push(this._data);
                              if(_loc4_)
                              {
                                 §§push(§§pop().permissionBuyable);
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00d5:
                                       var _temp_7:* = §§pop();
                                       §§push(_temp_7);
                                       if(_temp_7)
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00fc:
                                                addr00f2:
                                                §§push(this._data.locked);
                                                if(_loc4_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr0119:
                                                      this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                                      if(!_loc3_)
                                                      {
                                                         addr012f:
                                                         this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr0119);
                                          }
                                       }
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr0119);
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0080);
            }
            §§goto(addr007d);
         }
         §§goto(addr012f);
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
               this.setupCenter();
               if(!_loc2_)
               {
                  addr002a:
                  this.setTooltips();
                  if(!_loc2_)
                  {
                     this.updateAll();
                  }
               }
               return;
            }
         }
         §§goto(addr002a);
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(this._data);
            if(_loc4_)
            {
               §§push(§§pop().state);
               if(_loc4_ || _loc1_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc3_)
                        {
                           addr004a:
                           §§push(this.buildNowButton);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(true);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§pop().enabled = §§pop();
                                 if(_loc4_)
                                 {
                                    addr0073:
                                    §§push(this.buildNowButton);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc3_)
                                          {
                                             addr00a5:
                                             §§push(this.buildNowButton);
                                             if(!_loc3_)
                                             {
                                                addr00ae:
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(!_loc3_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push("");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 var _temp_12:* = §§pop();
                                                                                 §§push(_temp_12);
                                                                                 §§push(_temp_12);
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    var _loc2_:* = §§pop();
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr032e:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr033b:
                                                                                                      §§pop().imageNameRight = "layer_cc_icon";
                                                                                                      addr0338:
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(this.buildNowButton);
                                                                                                         if(_loc4_ || Boolean(this))
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               §§pop().showSparkle = §§pop();
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr038d);
                                                                                                                     }
                                                                                                                     §§goto(addr046a);
                                                                                                                  }
                                                                                                                  §§goto(addr0449);
                                                                                                               }
                                                                                                               §§goto(addr0400);
                                                                                                            }
                                                                                                            §§goto(addr0477);
                                                                                                         }
                                                                                                         §§goto(addr0463);
                                                                                                      }
                                                                                                      §§goto(addr0400);
                                                                                                   }
                                                                                                   §§goto(addr039f);
                                                                                                }
                                                                                                §§goto(addr0395);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr024f:
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(this._data);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0262:
                                                                                                      §§push(§§pop().state);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(_loc4_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr0299:
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr02a1:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr02b2:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    addr02d3:
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr02e5:
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr02fd:
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(_loc3_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr032e);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0395);
                                                                                                                                       }
                                                                                                                                       addr038d:
                                                                                                                                       §§pop().toolTip = §§pop();
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          addr0395:
                                                                                                                                          §§push(this.buildNowButton);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr039f:
                                                                                                                                             §§push(this.buildNowButton);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr03a8:
                                                                                                                                                §§push(Boolean(§§pop().enabled));
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   var _temp_20:* = §§pop();
                                                                                                                                                   §§push(_temp_20);
                                                                                                                                                   §§push(_temp_20);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr03d0:
                                                                                                                                                               §§push(this._data);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().locked);
                                                                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr03f8);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0424);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0476);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0467);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0412);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0477);
                                                                                                                                                      }
                                                                                                                                                      addr03f8:
                                                                                                                                                      §§pop().enabled = §§pop();
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr0400:
                                                                                                                                                         §§push(this.buildNowButton);
                                                                                                                                                         if(_loc4_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            addr0412:
                                                                                                                                                            §§push(this._data);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().userCanAfford);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr0424:
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     var _temp_25:* = §§pop();
                                                                                                                                                                     §§push(_temp_25);
                                                                                                                                                                     §§push(_temp_25);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr043b:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(!(_loc3_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0449:
                                                                                                                                                                                 addr044d:
                                                                                                                                                                                 §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0457:
                                                                                                                                                                                    var _temp_27:* = §§pop();
                                                                                                                                                                                    addr0458:
                                                                                                                                                                                    §§push(_temp_27);
                                                                                                                                                                                    if(_temp_27)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0462:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          §§goto(addr0477);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0476);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr0477:
                                                                                                                                                                                 §§goto(addr0463);
                                                                                                                                                                              }
                                                                                                                                                                              addr0463:
                                                                                                                                                                              §§goto(addr0467);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0457);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0458);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0462);
                                                                                                                                                            }
                                                                                                                                                            addr0467:
                                                                                                                                                            addr046a:
                                                                                                                                                            §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr0476:
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().showPlus = §§pop();
                                                                                                                                                            var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                            §§goto(addr047a);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0449);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr047a);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0458);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0424);
                                                                                                                                             }
                                                                                                                                             §§goto(addr044d);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0449);
                                                                                                                                       }
                                                                                                                                       §§goto(addr047a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0449);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0395);
                                                                                                                              }
                                                                                                                              §§goto(addr043b);
                                                                                                                           }
                                                                                                                           §§goto(addr03d0);
                                                                                                                        }
                                                                                                                        §§goto(addr0395);
                                                                                                                     }
                                                                                                                     §§goto(addr033b);
                                                                                                                  }
                                                                                                                  §§goto(addr0338);
                                                                                                               }
                                                                                                               §§goto(addr047a);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr031d:
                                                                                                               addr0317:
                                                                                                               addr0314:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr032e);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0395);
                                                                                                         }
                                                                                                         §§goto(addr031d);
                                                                                                      }
                                                                                                      §§goto(addr0317);
                                                                                                   }
                                                                                                   §§goto(addr0314);
                                                                                                }
                                                                                                §§goto(addr02d3);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0234:
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr024f);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02fd);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0233:
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                       §§goto(addr0234);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0230:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr0233);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr022f:
                                                                                    _loc2_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0230);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr022e:
                                                                                 var _temp_39:* = §§pop();
                                                                                 §§push(_temp_39);
                                                                                 §§push(_temp_39);
                                                                              }
                                                                              §§goto(addr022f);
                                                                           }
                                                                           §§goto(addr03a8);
                                                                        }
                                                                        §§goto(addr0338);
                                                                     }
                                                                     §§goto(addr02b2);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0200:
                                                                     §§pop().libNameRight = §§pop();
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr022e);
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr03a8);
                                                                        }
                                                                        §§goto(addr0412);
                                                                     }
                                                                  }
                                                                  §§goto(addr047a);
                                                               }
                                                               §§goto(addr02e5);
                                                            }
                                                            addr047a:
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               _loc1_.blueprintVO = this._data;
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  this.center.data = _loc1_;
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr033b);
                                                      }
                                                      §§goto(addr0463);
                                                   }
                                                   §§goto(addr02b2);
                                                }
                                                §§goto(addr024f);
                                             }
                                             §§goto(addr0299);
                                          }
                                          §§goto(addr0395);
                                       }
                                       §§goto(addr024f);
                                    }
                                    else
                                    {
                                       addr01f7:
                                       §§push("gui_resources_icons");
                                       if(_loc4_)
                                       {
                                          §§goto(addr0200);
                                       }
                                    }
                                    §§goto(addr02a1);
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr0457);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr0073);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(_loc4_)
                        {
                           §§push(true);
                           if(_loc4_ || _loc3_)
                           {
                              §§pop().enabled = §§pop();
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(this.buildNowButton);
                                 if(!_loc3_)
                                 {
                                    §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§pop().label = §§pop();
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(this.buildNowButton);
                                          if(!_loc3_)
                                          {
                                             §§goto(addr01f7);
                                          }
                                          §§goto(addr03d0);
                                       }
                                       §§goto(addr0395);
                                    }
                                    §§goto(addr046a);
                                 }
                                 §§goto(addr0463);
                              }
                              §§goto(addr02d3);
                           }
                           §§goto(addr0462);
                        }
                     }
                     §§goto(addr01f7);
                  }
                  §§goto(addr031d);
               }
               §§goto(addr0317);
            }
            §§goto(addr0262);
         }
         §§goto(addr004a);
      }
      
      private function _ArchitectTemplate_Decoration_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 25;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0096);
            }
            §§goto(addr0067);
         }
         addr0055:
         _loc1_.horizontalAlign = "center";
         if(_loc3_ || _loc3_)
         {
            addr0067:
            _loc1_.top = -9;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_LocaLabel1_i()];
               §§goto(addr0071);
            }
            §§goto(addr00aa);
         }
         addr0071:
         if(!(_loc2_ && _loc2_))
         {
            addr0096:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00aa:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxWidth = 690;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc2_)
                  {
                     _loc1_.id = "flavorText";
                     if(_loc2_ || Boolean(this))
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr009a);
                              }
                              §§goto(addr00a4);
                           }
                        }
                     }
                     addr009a:
                     this.flavorText = _loc1_;
                     if(_loc2_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"flavorText",this.flavorText);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0089);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr00a4);
      }
      
      private function _ArchitectTemplate_Decoration_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 240;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 300;
               if(!_loc2_)
               {
                  _loc1_.left = 4;
                  if(_loc3_)
                  {
                     addr0057:
                     _loc1_.bottom = 10;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_VGroup1_c()];
                        if(_loc3_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009a:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0086);
            }
            §§goto(addr009a);
         }
         §§goto(addr0057);
      }
      
      private function _ArchitectTemplate_Decoration_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr0090);
            }
            §§goto(addr0084);
         }
         addr0050:
         _loc1_.verticalAlign = "middle";
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_Group3_c(),this._ArchitectTemplate_Decoration_StickyNoteComponent1_i()];
            if(_loc3_ || Boolean(this))
            {
               addr0084:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0090:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0090);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr003c:
               _loc1_.height = 155;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_BuildingCostComponent1_i()];
                  if(!_loc3_)
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0077);
            }
            §§goto(addr0063);
         }
         §§goto(addr003c);
      }
      
      private function _ArchitectTemplate_Decoration_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0035:
               _loc1_.height = 115;
               if(_loc2_)
               {
                  _loc1_.id = "costComponent";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0086:
                              this.costComponent = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"costComponent",this.costComponent);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0090);
                        }
                        addr009d:
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0086);
            }
            §§goto(addr005d);
         }
         §§goto(addr0035);
      }
      
      private function _ArchitectTemplate_Decoration_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 126;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0044:
                  _loc1_.tapeLeft = true;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0056:
                     _loc1_.tapeRight = true;
                     if(!_loc2_)
                     {
                        _loc1_.visible = false;
                        if(!_loc2_)
                        {
                           _loc1_.includeInLayout = false;
                           if(!_loc2_)
                           {
                              §§goto(addr007f);
                           }
                           §§goto(addr00e1);
                        }
                        addr007f:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Decoration_Array6_c);
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.id = "restrictionGroup";
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00e1);
                                    }
                                    §§goto(addr00eb);
                                 }
                              }
                              addr00e1:
                              this.restrictionGroup = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00eb:
                                 BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr00eb);
                        }
                        addr00f8:
                        return _loc1_;
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr0056);
            }
            §§goto(addr00e1);
         }
         §§goto(addr0044);
      }
      
      private function _ArchitectTemplate_Decoration_Array6_c() : Array
      {
         return [this._ArchitectTemplate_Decoration_DynamicImageButton1_i(),this._ArchitectTemplate_Decoration_VGroup2_c()];
      }
      
      private function _ArchitectTemplate_Decoration_DynamicImageButton1_i() : DynamicImageButton
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
               _loc1_.right = 8;
               if(_loc3_)
               {
                  _loc1_.top = -10;
                  if(_loc3_)
                  {
                     addr003d:
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "restrictionFeatureButton";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr009f:
                                    this.restrictionFeatureButton = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00b1:
                                       BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                                    }
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00b1);
               }
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_Decoration_VGroup2_c() : VGroup
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
               §§goto(addr0041);
            }
            §§goto(addr006b);
         }
         addr0041:
         _loc1_.top = 9;
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_PostitHeaderComponent1_i(),this._ArchitectTemplate_Decoration_HGroup2_c()];
            if(_loc3_)
            {
               addr006b:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0083);
            }
            §§goto(addr007f);
         }
         addr0083:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.id = "restrictionHeader";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0063:
                        this.restrictionHeader = _loc1_;
                        if(!_loc2_)
                        {
                           addr006d:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0063);
            }
         }
         §§goto(addr006d);
      }
      
      private function _ArchitectTemplate_Decoration_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalAlign = "left";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_BriskImageDynaLib1_i(),this._ArchitectTemplate_Decoration_LocaLabel2_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0082);
                  }
                  §§goto(addr008e);
               }
            }
            addr0082:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr008e:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0092);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(!_loc2_)
               {
                  _loc1_.id = "restrictionGfx";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0069:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr0084:
                              this.restrictionGfx = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0069);
            }
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "restrictionName";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0073:
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr0084:
                           this.restrictionName = _loc1_;
                           if(!_loc2_)
                           {
                              addr008e:
                              BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0084);
               }
               §§goto(addr008e);
            }
         }
         §§goto(addr0073);
      }
      
      private function _ArchitectTemplate_Decoration_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.left = 240;
            if(!_loc3_)
            {
               _loc1_.right = 220;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.height = 300;
                  if(!_loc3_)
                  {
                     _loc1_.bottom = 15;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.verticalAlign = "top";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007f:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              addr0089:
                              _loc1_.gap = 15;
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_DetailsCenterComponent1_i(),this._ArchitectTemplate_Decoration_MultistateButton1_i()];
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00c5:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00d1:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00d5);
                                 }
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00d5);
            }
            §§goto(addr00c5);
         }
         addr00d5:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(_loc2_)
         {
            _loc1_.id = "center";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr006a);
                     }
                     §§goto(addr007c);
                  }
               }
               addr006a:
               this.center = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr007c:
                  BindingManager.executeBindings(this,"center",this.center);
               }
               §§goto(addr0088);
            }
         }
         addr0088:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!_loc2_)
                  {
                     addr005e:
                     _loc1_.id = "buildNowButton";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0094);
                              }
                           }
                           §§goto(addr009e);
                        }
                        addr0094:
                        this.buildNowButton = _loc1_;
                        if(_loc3_)
                        {
                           addr009e:
                           BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr009e);
                  }
               }
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _ArchitectTemplate_Decoration_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 220;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.right = -4;
                  if(!_loc3_)
                  {
                     _loc1_.top = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0079:
                        _loc1_.verticalAlign = "middle";
                        if(!_loc3_)
                        {
                           addr0084:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_StickyNoteComponent2_c()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0079);
            }
            §§goto(addr0084);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 150;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.tapeTop = true;
                  if(!_loc3_)
                  {
                     addr0059:
                     _loc1_.right = 15;
                     if(!_loc3_)
                     {
                        addr0071:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Decoration_Array11_c);
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr009a);
                     }
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
               §§goto(addr0071);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _ArchitectTemplate_Decoration_Array11_c() : Array
      {
         return [this._ArchitectTemplate_Decoration_VGroup5_i(),this._ArchitectTemplate_Decoration_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Decoration_VGroup5_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               addr0032:
               _loc1_.paddingTop = 5;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_PostitHeaderComponent2_i(),this._ArchitectTemplate_Decoration_HGroup3_c()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "effectsGroup";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr009b:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00a4:
                                 this.effectsGroup = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
                                 }
                              }
                              §§goto(addr00bb);
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr009b);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _ArchitectTemplate_Decoration_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "effectsHeader";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0074:
                           this.effectsHeader = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr0086:
                              BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
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
            §§goto(addr0074);
         }
         §§goto(addr0086);
      }
      
      private function _ArchitectTemplate_Decoration_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.paddingTop = 10;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_List1_i()];
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr0092);
      }
      
      private function _ArchitectTemplate_Decoration_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Decoration_ClassFactory1_c();
            if(!_loc2_)
            {
               addr0036:
               _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
               if(!_loc2_)
               {
                  _loc1_.id = "effectsList";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0083:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr009e);
                        }
                     }
                     addr0094:
                     this.effectsList = _loc1_;
                     if(_loc3_)
                     {
                        addr009e:
                        BindingManager.executeBindings(this,"effectsList",this.effectsList);
                     }
                     §§goto(addr00ab);
                  }
                  addr00ab:
                  return _loc1_;
               }
               §§goto(addr0083);
            }
            §§goto(addr0094);
         }
         §§goto(addr0036);
      }
      
      private function _ArchitectTemplate_Decoration_ClassFactory1_c() : ClassFactory
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
      
      private function _ArchitectTemplate_Decoration_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.right = 0;
               if(!_loc2_)
               {
                  _loc1_.top = -10;
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "effectFeatureButton";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr009c);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr009c);
            }
            §§goto(addr00b7);
         }
         addr009c:
         _loc1_.document = this;
         if(_loc3_ || Boolean(this))
         {
            addr00ad:
            this.effectFeatureButton = _loc1_;
            if(!_loc2_)
            {
               addr00b7:
               BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
            }
         }
         return _loc1_;
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_Decoration_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
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
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._597326554buildNowButton = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
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
         §§goto(addr0057);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1364013995center = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0070);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0070);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1253508016costComponent = param1;
                  addr0041:
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1768900535effectFeatureButton = param1;
                  addr0045:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
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
         §§goto(addr0045);
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
               if(_loc4_ || _loc3_)
               {
                  this._490397341effectsGroup = param1;
                  if(_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
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
               if(_loc3_)
               {
                  this._1961361873effectsHeader = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr005b);
            }
         }
         addr007a:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0040:
                  this._1678527680effectsList = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0040);
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
               if(_loc4_)
               {
                  this._1684755691flavorText = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0080:
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
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0079);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
         }
         addr0088:
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1516951929restrictionHeader = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._538066039restrictionName = param1;
                  addr0042:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0042);
      }
   }
}

