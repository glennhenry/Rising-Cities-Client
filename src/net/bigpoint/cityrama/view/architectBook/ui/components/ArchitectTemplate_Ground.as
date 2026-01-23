package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
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
   import spark.components.VGroup;
   
   public class ArchitectTemplate_Ground extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Grounds";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ArchitectTemplate_Grounds";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Ground()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.percentWidth = 100;
                  if(_loc2_ || _loc1_)
                  {
                     this.percentHeight = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr009a);
                  }
               }
            }
            addr0070:
            this.mxmlContent = [this._ArchitectTemplate_Ground_HGroup1_c(),this._ArchitectTemplate_Ground_VGroup1_c(),this._ArchitectTemplate_Ground_VGroup2_c(),this._ArchitectTemplate_Ground_VGroup3_c()];
            if(!(_loc1_ && _loc1_))
            {
               addr009a:
               this.addEventListener("creationComplete",this.___ArchitectTemplate_Ground_Group1_creationComplete);
            }
            §§goto(addr00a6);
         }
         addr00a6:
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
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  addr0047:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0041:
            return;
         }
         §§goto(addr0047);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
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
            §§push(this.buildNowButton);
            if(_loc3_ || _loc2_)
            {
               §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
               if(_loc3_ || _loc3_)
               {
                  this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0074:
                     this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                     if(!_loc4_)
                     {
                        var _temp_4:* = this.restrictionFeatureButton;
                        var _loc2_:Boolean;
                        this.restrictionFeatureButton.includeInLayout = _loc2_ = false;
                        _temp_4.visible = _loc2_;
                        addr0087:
                        if(_loc3_ || _loc3_)
                        {
                           this.setupCenter();
                           if(!(_loc4_ && _loc2_))
                           {
                              addr00c6:
                              this.updateAll();
                           }
                           §§goto(addr00cc);
                        }
                     }
                     §§goto(addr00c6);
                  }
                  addr00cc:
                  return;
               }
               §§goto(addr00c6);
            }
            §§goto(addr0074);
         }
         §§goto(addr0087);
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
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
            if(_loc3_ || _loc3_)
            {
               §§goto(addr003f);
            }
            §§goto(addr0051);
         }
         addr003f:
         this._veryData = param1;
         if(!(_loc2_ && Boolean(param1)))
         {
            addr0051:
            invalidateProperties();
         }
      }
      
      private function updateAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(!_loc2_)
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(_loc1_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc1_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc1_)
                     {
                        §§push(this.restrictionGfx);
                        if(_loc1_)
                        {
                           §§push(this._veryData);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(_loc1_ || Boolean(this))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(_loc1_)
                                       {
                                          §§push(this._veryData);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(_loc1_)
                                             {
                                                addr00c8:
                                                §§push(§§pop().visualName);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   addr00d8:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr00f4:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      if(_loc1_)
                                                      {
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc1_)
                                                         {
                                                            addr011a:
                                                            §§push(this.restrictionGroup);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(true);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr0158:
                                                                     §§push(this._data);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc1_)
                                                                              {
                                                                                 var _temp_13:* = §§pop();
                                                                                 §§push(_temp_13);
                                                                                 if(!_temp_13)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          addr01a8:
                                                                                          addr01a7:
                                                                                          addr01a1:
                                                                                          addr019e:
                                                                                          addr019a:
                                                                                          if(this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push(this.costComponent);
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   §§push("noCosts");
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §§pop().currentState = §§pop();
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         addr01da:
                                                                                                         §§push(this.costComponent);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            §§pop().invalidateProperties();
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               addr0211:
                                                                                                               this.costComponent.setData(this._veryData.costVOList);
                                                                                                               §§goto(addr020d);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0205:
                                                                                                            §§pop().currentState = "hasCosts";
                                                                                                            addr0202:
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               addr020d:
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  addr0221:
                                                                                                                  this.setTooltips();
                                                                                                               }
                                                                                                               §§goto(addr0227);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0221);
                                                                                                      }
                                                                                                      §§goto(addr0227);
                                                                                                   }
                                                                                                   §§goto(addr0205);
                                                                                                }
                                                                                                §§goto(addr0202);
                                                                                             }
                                                                                             §§goto(addr0221);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.costComponent);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                §§goto(addr0202);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0211);
                                                                                       }
                                                                                       §§goto(addr020d);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr01a8);
                                                                           }
                                                                           §§goto(addr01a7);
                                                                        }
                                                                        §§goto(addr01a1);
                                                                     }
                                                                     §§goto(addr019e);
                                                                  }
                                                                  §§goto(addr01da);
                                                               }
                                                               else
                                                               {
                                                                  addr0149:
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     §§goto(addr0158);
                                                                  }
                                                               }
                                                               §§goto(addr020d);
                                                            }
                                                            else
                                                            {
                                                               addr0148:
                                                               §§push(false);
                                                            }
                                                            §§goto(addr0149);
                                                         }
                                                         §§goto(addr019a);
                                                      }
                                                      §§goto(addr0158);
                                                      addr00f2:
                                                      addr00ef:
                                                      addr00eb:
                                                   }
                                                   §§goto(addr011a);
                                                }
                                                §§goto(addr00f4);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00ef);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr011a);
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr0221);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0148);
               }
               §§goto(addr01a1);
            }
            §§goto(addr020d);
         }
         addr0227:
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._veryData = param1;
            if(_loc3_ || _loc2_)
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
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.center);
            if(_loc3_)
            {
               §§push("tooltipLeftScroll");
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(_loc3_)
                     {
                        addr008a:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr007e:
                        addr007b:
                        if(!_loc4_)
                        {
                           this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                           if(!(_loc4_ && _loc1_))
                           {
                              addr00b2:
                              §§push(this._data);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(§§pop().permissionBuyable);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       if(_temp_8)
                                       {
                                          if(_loc3_)
                                          {
                                             addr00ed:
                                             §§pop();
                                             if(_loc3_)
                                             {
                                                addr0113:
                                                addr0102:
                                                addr00fe:
                                                §§push(this._data.locked);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   addr0112:
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr011d:
                                                      this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                   }
                                                   §§goto(addr012e);
                                                }
                                             }
                                             §§goto(addr011d);
                                          }
                                          §§goto(addr0112);
                                       }
                                       §§goto(addr0113);
                                    }
                                    §§goto(addr0112);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr0102);
                           }
                           addr012e:
                           return;
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00fe);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr007e);
            }
            §§goto(addr007b);
         }
         §§goto(addr00b2);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               this.setupCenter();
               if(_loc2_ || Boolean(this))
               {
                  this.setTooltips();
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0058:
                     this.updateAll();
                  }
               }
               §§goto(addr005e);
            }
            §§goto(addr0058);
         }
         addr005e:
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §§push(this._data);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop().state);
               if(!_loc4_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!_loc4_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_ || _loc1_)
                        {
                           §§push(this.buildNowButton);
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(true);
                              if(_loc5_ || _loc1_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(this.buildNowButton);
                                    if(!_loc4_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(this.buildNowButton);
                                             if(_loc5_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr00d3:
                                                   §§pop().toolTip = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push("button_icon_build");
                                                         if(_loc5_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc5_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc5_ || Boolean(this))
                                                                              {
                                                                                 var _temp_15:* = §§pop();
                                                                                 §§push(_temp_15);
                                                                                 §§push(_temp_15);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc4_ && Boolean(this))
                                                                                                {
                                                                                                   addr0273:
                                                                                                   §§push(this._data);
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().state);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr029b:
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr02b1:
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr02bb:
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(_loc5_ || Boolean(this))
                                                                                                                     {
                                                                                                                        addr02cc:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr02d5:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(!(_loc4_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr02f7:
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr0301:
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                       if(_loc5_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          addr031a:
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr03b0:
                                                                                                                                          §§push(this.buildNowButton);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr03ba:
                                                                                                                                             §§push(this.buildNowButton);
                                                                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop().enabled));
                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr03de:
                                                                                                                                                   var _temp_26:* = §§pop();
                                                                                                                                                   §§push(_temp_26);
                                                                                                                                                   §§push(_temp_26);
                                                                                                                                                   if(_loc5_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr03fe:
                                                                                                                                                               §§push(this._data);
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().locked);
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0411:
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        addr0420:
                                                                                                                                                                        §§pop().enabled = §§pop();
                                                                                                                                                                        if(_loc5_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0431:
                                                                                                                                                                           §§push(this.buildNowButton);
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              addr043b:
                                                                                                                                                                              §§push(this._data);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0445:
                                                                                                                                                                                 §§push(§§pop().userCanAfford);
                                                                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0456:
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0465:
                                                                                                                                                                                       var _temp_32:* = §§pop();
                                                                                                                                                                                       §§push(_temp_32);
                                                                                                                                                                                       §§push(_temp_32);
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc4_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr047e:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0485:
                                                                                                                                                                                                   addr0489:
                                                                                                                                                                                                   §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0493:
                                                                                                                                                                                                      var _temp_34:* = §§pop();
                                                                                                                                                                                                      addr0494:
                                                                                                                                                                                                      §§push(_temp_34);
                                                                                                                                                                                                      if(_temp_34)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr049e:
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            addr04bc:
                                                                                                                                                                                                            addr049f:
                                                                                                                                                                                                            addr04a3:
                                                                                                                                                                                                            addr04a6:
                                                                                                                                                                                                            §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                                                            if(_loc5_ || _loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr04bb:
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().showPlus = §§pop();
                                                                                                                                                                                                            addr04bf:
                                                                                                                                                                                                            var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                                                            var _loc2_:Boolean = false;
                                                                                                                                                                                                            if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this._data);
                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().permissionBuyable);
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0503:
                                                                                                                                                                                                                           addr04ff:
                                                                                                                                                                                                                           if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr052e:
                                                                                                                                                                                                                                 _loc2_ = true;
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0535:
                                                                                                                                                                                                                                    _loc1_.blueprintVO = this._data;
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0543:
                                                                                                                                                                                                                                       this.center.data = _loc1_;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr054a);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0543);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr054a:
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0535);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0543);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0535);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr052e);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0503);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04ff);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04bb);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04bc);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04bb);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr049f);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0493);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0494);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr047e);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04bc);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04a3);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0485);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04bf);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr047e);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr049e);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0445);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr043b);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0420);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0494);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0420);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0489);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03fe);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr03a8:
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03b0);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0431);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03fe);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0431);
                                                                                                                              }
                                                                                                                              §§goto(addr0456);
                                                                                                                           }
                                                                                                                           §§goto(addr049f);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr034a:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr035b:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                           {
                                                                                                                              §§push(false);
                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr038f:
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                                       if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr03a8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04a6);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03ba);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04bf);
                                                                                                                              }
                                                                                                                              §§goto(addr0465);
                                                                                                                           }
                                                                                                                           §§goto(addr03fe);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0431);
                                                                                                                  }
                                                                                                                  §§goto(addr03ba);
                                                                                                               }
                                                                                                               §§goto(addr02d5);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0333:
                                                                                                               addr032d:
                                                                                                               addr032a:
                                                                                                               if(this._data.state == BlueprintVo.STATE_DOESNT_NEED_PERMISSION)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr0347:
                                                                                                                        §§goto(addr034a);
                                                                                                                        §§push("layer_cc_icon");
                                                                                                                     }
                                                                                                                     §§goto(addr038f);
                                                                                                                  }
                                                                                                                  §§goto(addr04bf);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03b0);
                                                                                                         }
                                                                                                         §§goto(addr0333);
                                                                                                      }
                                                                                                      §§goto(addr032d);
                                                                                                   }
                                                                                                   §§goto(addr032a);
                                                                                                }
                                                                                                §§goto(addr03b0);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr025a:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr0262:
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§goto(addr0273);
                                                                                                }
                                                                                                §§goto(addr02f7);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr031a);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0259:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr025a);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0256:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr0259);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0255:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0256);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0254:
                                                                                 var _temp_43:* = §§pop();
                                                                                 §§push(_temp_43);
                                                                                 §§push(_temp_43);
                                                                              }
                                                                              §§goto(addr0255);
                                                                           }
                                                                           §§goto(addr0489);
                                                                        }
                                                                        §§goto(addr043b);
                                                                     }
                                                                     §§goto(addr03b0);
                                                                  }
                                                                  §§goto(addr034a);
                                                               }
                                                               else
                                                               {
                                                                  addr01f6:
                                                                  §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop().label = §§pop();
                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr021a:
                                                                        §§push(this.buildNowButton);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push("gui_resources_icons");
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().libNameRight = §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr023e:
                                                                                 §§push(this.buildNowButton);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0248:
                                                                                    §§push(this.buildNowButton);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr0254);
                                                                                       §§push("");
                                                                                    }
                                                                                    §§goto(addr0489);
                                                                                 }
                                                                                 §§goto(addr0301);
                                                                              }
                                                                              §§goto(addr02b1);
                                                                           }
                                                                           §§goto(addr034a);
                                                                        }
                                                                        §§goto(addr0248);
                                                                     }
                                                                     §§goto(addr02d5);
                                                                  }
                                                               }
                                                               §§goto(addr0262);
                                                            }
                                                            §§goto(addr0431);
                                                         }
                                                         §§goto(addr02cc);
                                                      }
                                                      §§goto(addr02bb);
                                                   }
                                                   else
                                                   {
                                                      addr01e4:
                                                      §§push(this.buildNowButton);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr01f6);
                                                      }
                                                   }
                                                   §§goto(addr038f);
                                                }
                                                §§goto(addr0262);
                                             }
                                             §§goto(addr0485);
                                          }
                                          §§goto(addr035b);
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr038f);
                                 }
                                 §§goto(addr023e);
                              }
                              §§goto(addr03de);
                           }
                           §§goto(addr03ba);
                        }
                        §§goto(addr02b1);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           §§push(true);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§pop().enabled = §§pop();
                              if(_loc5_ || Boolean(this))
                              {
                                 §§goto(addr01e4);
                              }
                              §§goto(addr021a);
                           }
                           §§goto(addr0411);
                        }
                     }
                     §§goto(addr0347);
                  }
                  §§goto(addr0333);
               }
               §§goto(addr029b);
            }
            §§goto(addr032a);
         }
         §§goto(addr03b0);
      }
      
      private function _ArchitectTemplate_Ground_HGroup1_c() : HGroup
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
               _loc1_.height = 25;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        _loc1_.top = -9;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Ground_LocaLabel1_i()];
                           if(_loc3_ || _loc2_)
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00b3);
                     }
                  }
                  §§goto(addr00af);
               }
               addr00b3:
               return _loc1_;
            }
            §§goto(addr00af);
         }
         §§goto(addr009b);
      }
      
      private function _ArchitectTemplate_Ground_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.maxWidth = 690;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr003a);
            }
            §§goto(addr0071);
         }
         addr003a:
         _loc1_.maxDisplayedLines = 2;
         if(!_loc2_)
         {
            _loc1_.styleName = "flavorText";
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0066);
            }
            §§goto(addr0088);
         }
         addr0066:
         _loc1_.id = "flavorText";
         if(!_loc2_)
         {
            addr0071:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0088:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0099:
                     this.flavorText = _loc1_;
                     if(!_loc2_)
                     {
                        addr00a3:
                        BindingManager.executeBindings(this,"flavorText",this.flavorText);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00b0);
            }
            §§goto(addr0099);
         }
         addr00b0:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Ground_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.width = 240;
            if(_loc3_)
            {
               _loc1_.height = 300;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.left = 4;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 40;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr007b:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Ground_BuildingCostComponent1_i()];
                           if(!_loc2_)
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr009f);
                  }
                  addr008b:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr009f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a3);
               }
               addr00a3:
               return _loc1_;
            }
            §§goto(addr008b);
         }
         §§goto(addr007b);
      }
      
      private function _ArchitectTemplate_Ground_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 115;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006d:
                     _loc1_.id = "costComponent";
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00a0:
                                 this.costComponent = _loc1_;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00b2:
                                    BindingManager.executeBindings(this,"costComponent",this.costComponent);
                                 }
                              }
                              §§goto(addr00bf);
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00a0);
            }
            §§goto(addr006d);
         }
         addr00bf:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Ground_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.left = 240;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.right = 220;
               if(_loc3_)
               {
                  _loc1_.height = 300;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 15;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0069:
                        _loc1_.verticalAlign = "top";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007b:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_ || _loc3_)
                           {
                              addr008d:
                              _loc1_.gap = 15;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00d4);
                           }
                           addr00aa:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Ground_DetailsCenterComponent1_i(),this._ArchitectTemplate_Ground_MultistateButton1_i()];
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00d4:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00d8);
                        }
                     }
                     §§goto(addr008d);
                  }
                  addr00d8:
                  return _loc1_;
               }
               §§goto(addr0069);
            }
            §§goto(addr007b);
         }
         §§goto(addr00d4);
      }
      
      private function _ArchitectTemplate_Ground_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(!_loc2_)
         {
            _loc1_.id = "center";
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0061:
                        this.center = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0061);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr0061);
      }
      
      private function _ArchitectTemplate_Ground_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(_loc3_ || _loc3_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "buildNowButton";
                     if(_loc3_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr009d:
                                 this.buildNowButton = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00af:
                                    BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00af);
                           }
                           addr00bc:
                           return _loc1_;
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr009d);
            }
         }
         §§goto(addr0073);
      }
      
      private function _ArchitectTemplate_Ground_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.width = 225;
            if(_loc2_ || _loc2_)
            {
               _loc1_.height = 290;
               if(_loc2_)
               {
                  addr004b:
                  _loc1_.right = -5;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.bottom = 40;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007b:
                        _loc1_.verticalAlign = "middle";
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Ground_StickyNoteComponent1_i()];
                           if(_loc2_)
                           {
                              addr0096:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr00a2);
            }
            §§goto(addr0096);
         }
         §§goto(addr004b);
      }
      
      private function _ArchitectTemplate_Ground_StickyNoteComponent1_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.bottom = 28;
               if(_loc2_)
               {
                  _loc1_.height = 126;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.tapeLeft = true;
                     if(_loc2_)
                     {
                        addr0066:
                        _loc1_.tapeRight = true;
                        if(!_loc3_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr0066);
            }
            addr0070:
            _loc1_.visible = false;
            if(_loc2_)
            {
               addr0079:
               _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Ground_Array6_c);
               if(!_loc3_)
               {
                  _loc1_.id = "restrictionGroup";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr00ba:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr00c3);
                           }
                        }
                        §§goto(addr00cd);
                     }
                     addr00c3:
                     this.restrictionGroup = _loc1_;
                     if(_loc2_)
                     {
                        addr00cd:
                        BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                     }
                     §§goto(addr00da);
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr00ba);
            }
            addr00da:
            return _loc1_;
         }
         §§goto(addr00cd);
      }
      
      private function _ArchitectTemplate_Ground_Array6_c() : Array
      {
         return [this._ArchitectTemplate_Ground_DynamicImageButton1_i(),this._ArchitectTemplate_Ground_VGroup4_c()];
      }
      
      private function _ArchitectTemplate_Ground_DynamicImageButton1_i() : DynamicImageButton
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
               _loc1_.right = 8;
               if(!_loc2_)
               {
                  _loc1_.top = -10;
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(!_loc2_)
                     {
                        §§goto(addr0061);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr0095);
               }
               addr0061:
               _loc1_.id = "restrictionFeatureButton";
               if(_loc3_ || _loc3_)
               {
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0095:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr009e);
                        }
                     }
                     §§goto(addr00a8);
                  }
               }
               addr009e:
               this.restrictionFeatureButton = _loc1_;
               if(!_loc2_)
               {
                  addr00a8:
                  BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
               }
               §§goto(addr00b5);
            }
            §§goto(addr0074);
         }
         addr00b5:
         return _loc1_;
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_Ground_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.paddingTop = 7;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Ground_PostitHeaderComponent1_i(),this._ArchitectTemplate_Ground_HGroup2_c()];
                  addr0046:
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0082:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0082);
            }
            addr0086:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _ArchitectTemplate_Ground_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!_loc3_)
         {
            _loc1_.id = "restrictionHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0059:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr006a);
                     }
                     §§goto(addr0074);
                  }
               }
               addr006a:
               this.restrictionHeader = _loc1_;
               if(!_loc3_)
               {
                  addr0074:
                  BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
               }
               return _loc1_;
            }
            §§goto(addr0059);
         }
         §§goto(addr0074);
      }
      
      private function _ArchitectTemplate_Ground_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalAlign = "left";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Ground_BriskImageDynaLib1_i(),this._ArchitectTemplate_Ground_LocaLabel2_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr007c);
               }
               addr0070:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr007c:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005a);
      }
      
      private function _ArchitectTemplate_Ground_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "restrictionGfx";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr007e:
                              this.restrictionGfx = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0075);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _ArchitectTemplate_Ground_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc3_)
            {
               _loc1_.id = "restrictionName";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr006a:
                           this.restrictionName = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr007c:
                              BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr007c);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      public function ___ArchitectTemplate_Ground_Group1_creationComplete(param1:FlexEvent) : void
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._597326554buildNowButton;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._597326554buildNowButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
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
               if(_loc4_)
               {
                  this._1364013995center = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0082:
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
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0041:
                  this._1253508016costComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0041);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionFeatureButton() : DynamicImageButton
      {
         return this._188635812restrictionFeatureButton;
      }
      
      public function set restrictionFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._188635812restrictionFeatureButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
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
         §§goto(addr005d);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
         }
         addr0087:
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
               if(!(_loc3_ && _loc3_))
               {
                  this._505777645restrictionGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr0064);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1516951929restrictionHeader = param1;
                  addr0040:
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0058);
            }
            addr007f:
            return;
         }
         §§goto(addr0040);
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
               if(_loc3_ || Boolean(this))
               {
                  this._538066039restrictionName = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
   }
}

