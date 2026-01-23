package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBookEducationContentRight extends Group
   {
      
      private var _1322365109boostButton:MultistateButton;
      
      private var _1578852477buySkillsPointsButton:MultistateButton;
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _443494924dextroButton:DynamicPlusButton;
      
      private var _1632808699dextroPriceLabel:LocaLabel;
      
      private var _1414006863educationContent:HGroup;
      
      private var _858045819educationDurationContainer:HGroup;
      
      private var _734861048educationDurationLabel:LocaLabel;
      
      private var _1207421672educationPointsHeader:HeaderComponentSmall;
      
      private var _1792817277educationTimer:TimerBarComponent;
      
      private var _1575867244epGroup:HGroup;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1264025245noMoreStepsLabel:LocaLabel;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _1939953833pricesContainer:VGroup;
      
      private var _1873300278pricesLabel:LocaLabel;
      
      private var _423293566skillPointContainer:HGroup;
      
      private var _2079322838skillPointRangeLabel:LocaLabel;
      
      private var _1943111220startButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _skillPointPrice:int;
      
      private var _educationRunning:Boolean;
      
      private var _instantFinishData:Object;
      
      private var _instantFinishDataDirty:Boolean = false;
      
      public function SchoolBookEducationContentRight()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr003a);
            }
            §§goto(addr0062);
         }
         addr003a:
         mx_internal::_document = this;
         if(!_loc1_)
         {
            this.mxmlContent = [this._SchoolBookEducationContentRight_Group2_c(),this._SchoolBookEducationContentRight_HGroup6_c()];
            if(_loc2_)
            {
               addr0062:
               this.addEventListener("creationComplete",this.___SchoolBookEducationContentRight_Group1_creationComplete);
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0034);
            }
            §§goto(addr004f);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && Boolean(param1)))
            {
               return;
            }
         }
         else
         {
            addr004f:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.educationPointsHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.getEducationPoints");
            if(!_loc1_)
            {
               addr002e:
               §§push(this.startButton);
               if(!_loc1_)
               {
                  §§push(LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.start"));
                  if(!_loc1_)
                  {
                     §§pop().label = §§pop();
                     if(_loc2_)
                     {
                        addr0060:
                        this.startButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.getSkillPoints");
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr0079);
                        }
                        §§goto(addr0090);
                        addr0054:
                        addr0050:
                     }
                     addr0079:
                     this.dextroButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.getSkillPointsDextro");
                     if(!_loc1_)
                     {
                        addr0090:
                        this.pricesContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.getPointsFromTraining");
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§goto(addr00b9);
                        }
                        §§goto(addr00d9);
                     }
                     addr00b9:
                     this.buySkillsPointsButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.buy");
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr00d9:
                        this.pricesLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.prices");
                     }
                     return;
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0054);
            }
            §§goto(addr0050);
         }
         §§goto(addr002e);
      }
      
      private function handleStartClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_START_EDUCATION,true,true));
         }
      }
      
      public function set educationRunning(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._educationRunning = param1;
            if(!(_loc2_ && param1))
            {
               if(param1)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0058:
                     this.noMoreStepsAvailable = param1;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.noMoreStepsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.educationrunning");
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr0058);
      }
      
      public function set noMoreStepsAvailable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  §§push(this.noMoreStepsLabel);
                  if(_loc3_)
                  {
                     §§push(true);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().visible = §§pop();
                        if(!_loc2_)
                        {
                           this.educationContent.visible = false;
                           if(_loc3_ || param1)
                           {
                              §§goto(addr0060);
                           }
                           §§goto(addr009e);
                        }
                        addr0060:
                        §§push(this.noMoreStepsLabel);
                        if(_loc3_)
                        {
                           §§pop().text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.stepsMax");
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr0097:
                           §§pop().visible = false;
                           addr0096:
                           if(_loc3_)
                           {
                              addr009e:
                              this.educationContent.visible = true;
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr009e);
            }
            else
            {
               §§push(this.noMoreStepsLabel);
            }
            §§goto(addr0096);
         }
         addr00a5:
      }
      
      public function setNextSkillPoints(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.skillPointContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.nextLevelGives",[param1.toString(),param1.toString()]);
            if(_loc2_)
            {
               addr0046:
               this.skillPointRangeLabel.text = param1.toString();
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function set educationPrice(param1:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this.priceLabel.text = LocaUtils.getThousendSeperatedNumber(param1);
            if(!(_loc4_ && _loc2_))
            {
               this._skillPointPrice = param1;
               if(_loc3_)
               {
                  §§goto(addr0056);
               }
               §§goto(addr0065);
            }
            addr0056:
            this.buySkillsPointsButton.visible = param1 > 0;
            if(_loc3_)
            {
               addr0065:
               this.epGroup.visible = this.epGroup.includeInLayout = param1 > 0;
            }
            return;
         }
         §§goto(addr0065);
      }
      
      public function set educationPriceDextro(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.dextroPriceLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.dextroPrice",[param1.toString()]);
            if(!_loc3_)
            {
               this.dextroButton.enabled = param1 > 0;
            }
         }
      }
      
      public function set hasEnoughPoints(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.checkMark);
            if(_loc2_ || _loc3_)
            {
               if(param1)
               {
                  addr0046:
                  §§push("checkmark_green");
                  if(_loc3_ && param1)
                  {
                  }
               }
               else
               {
                  §§push("checkmark_gray");
               }
               §§pop().dynaBmpSourceName = §§pop();
               if(!(_loc3_ && Boolean(this)))
               {
                  this.buySkillsPointsButton.enabled = param1;
               }
               §§goto(addr0074);
            }
            §§goto(addr0046);
         }
         addr0074:
      }
      
      public function set hasEnoughDextro(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.dextroButton);
            §§push(param1);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().showPlus = §§pop();
         }
      }
      
      public function set stepDuration(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.educationDurationContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.nextLevelLastsLonger",[param1.toString()]);
            if(_loc3_ || Boolean(param1))
            {
               addr0062:
               §§push(this.educationDurationLabel);
               §§push("+ ");
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().text = §§pop();
            }
            return;
         }
         §§goto(addr0062);
      }
      
      private function handlePointBuyClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_BUY_POINTS,true));
         }
      }
      
      private function handleDextroBuyClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this.dextroButton.showPlus)
            {
               if(_loc3_)
               {
                  dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_BUY_DEXTRO,true));
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_USE_DEXTRO,true));
            }
         }
      }
      
      public function set harvestValues(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.userMayStart = true;
            if(!_loc2_)
            {
               §§push(this.educationTimer);
               if(_loc3_ || _loc3_)
               {
                  §§pop().data = param1;
                  if(_loc3_)
                  {
                     §§push(this.educationTimer);
                     if(!_loc2_)
                     {
                        §§pop().progressBar.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.trainingDuration");
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr0092);
                     }
                     addr007c:
                     this.educationTimer.boostButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.useExpresso");
                     if(!_loc2_)
                     {
                        addr0092:
                        this.startButton.enabled = param1.waitingForStart;
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr007c);
            }
            §§goto(addr0092);
         }
         addr009d:
      }
      
      private function boostButton_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            this.educationTimer.visible = this.educationTimer.includeInLayout = false;
            if(!(_loc3_ && _loc3_))
            {
               this.infoLabel.visible = this.infoLabel.includeInLayout = true;
            }
         }
      }
      
      private function boostButton_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            var _temp_1:* = this.educationTimer;
            var _loc2_:Boolean;
            this.educationTimer.includeInLayout = _loc2_ = true;
            _temp_1.visible = _loc2_;
            if(!(_loc4_ && _loc2_))
            {
               this.infoLabel.visible = this.infoLabel.includeInLayout = false;
            }
         }
      }
      
      private function boostButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:SchoolBookEvent = new SchoolBookEvent(SchoolBookEvent.SCHOOL_BOOST_EDUCATION,true);
         if(_loc3_)
         {
            _loc2_.educationRunning = this._educationRunning;
            if(_loc3_ || Boolean(param1))
            {
               addr004c:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr004c);
      }
      
      public function set instantFinishData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(this._instantFinishData,param1))
            {
               if(_loc3_)
               {
                  this._instantFinishData = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr005e:
                     this._instantFinishDataDirty = true;
                     if(_loc3_ || _loc3_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc1_)
            {
               if(this._instantFinishDataDirty)
               {
                  if(!_loc2_)
                  {
                     this._instantFinishDataDirty = false;
                     if(!_loc2_)
                     {
                        this.infoLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.boostLabel",[this._instantFinishData.cost]);
                        if(!_loc2_)
                        {
                           addr0073:
                           §§push(this.boostButton);
                           if(!_loc2_)
                           {
                              §§pop().showPlus = this._instantFinishData.cost > this._instantFinishData.rcStock;
                              if(!_loc2_)
                              {
                                 addr0099:
                                 this.boostButton.priceToConfirm = this._instantFinishData.cost;
                                 addr0095:
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0095);
               }
               addr00a4:
               return;
            }
         }
         §§goto(addr0073);
      }
      
      private function _SchoolBookEducationContentRight_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = -15;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr005b);
               }
               §§goto(addr007d);
            }
         }
         addr005b:
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib1_c(),this._SchoolBookEducationContentRight_VGroup1_c()];
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr007d:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_schoolBook";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "bluepostit_largerect";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0068);
      }
      
      private function _SchoolBookEducationContentRight_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr007f);
               }
               addr0069:
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group3_c(),this._SchoolBookEducationContentRight_Group4_c()];
               if(_loc2_)
               {
                  addr007f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008b:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr008b);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_HeaderComponentSmall1_i()];
               if(_loc2_ || Boolean(this))
               {
                  addr004c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0058:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0058);
         }
         §§goto(addr004c);
      }
      
      private function _SchoolBookEducationContentRight_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(!_loc2_)
         {
            _loc1_.left = 20;
            if(!_loc2_)
            {
               _loc1_.right = 25;
               if(_loc3_)
               {
                  _loc1_.textHAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.id = "educationPointsHeader";
                     if(!_loc2_)
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr0079);
                  }
                  addr005a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0079:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr008a);
                        }
                     }
                     §§goto(addr0094);
                  }
                  addr008a:
                  this.educationPointsHeader = _loc1_;
                  if(_loc3_)
                  {
                     addr0094:
                     BindingManager.executeBindings(this,"educationPointsHeader",this.educationPointsHeader);
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr0094);
      }
      
      private function _SchoolBookEducationContentRight_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib2_c(),this._SchoolBookEducationContentRight_LocaLabel1_i(),this._SchoolBookEducationContentRight_HGroup1_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_schoolBook";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "postit_schoolLayer";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr0078);
               }
               addr006c:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0078:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.width = 340;
            if(_loc2_ || _loc2_)
            {
               _loc1_.top = 30;
               if(!_loc3_)
               {
                  _loc1_.left = 35;
                  if(_loc2_)
                  {
                     addr0047:
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        _loc1_.styleName = "schoolBookText";
                        if(!_loc3_)
                        {
                           addr0067:
                           _loc1_.id = "noMoreStepsLabel";
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr0086:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00a4:
                                       this.noMoreStepsLabel = _loc1_;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          BindingManager.executeBindings(this,"noMoreStepsLabel",this.noMoreStepsLabel);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00a4);
                           }
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0047);
            }
            §§goto(addr0067);
         }
         §§goto(addr0086);
      }
      
      private function _SchoolBookEducationContentRight_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.paddingRight = 15;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group5_c(),this._SchoolBookEducationContentRight_BriskImageDynaLib5_c(),this._SchoolBookEducationContentRight_Group7_c()];
                        §§goto(addr005c);
                     }
                  }
               }
               §§goto(addr008d);
            }
            addr005c:
            if(!(_loc3_ && _loc2_))
            {
               addr008d:
               _loc1_.id = "educationContent";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr00b4:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00d1:
                           this.educationContent = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              BindingManager.executeBindings(this,"educationContent",this.educationContent);
                           }
                        }
                        §§goto(addr00f0);
                     }
                  }
               }
               §§goto(addr00d1);
            }
            addr00f0:
            return _loc1_;
         }
         §§goto(addr00b4);
      }
      
      private function _SchoolBookEducationContentRight_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_VGroup2_c()];
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr004e);
               }
               §§goto(addr005a);
            }
            addr004e:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr005a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _SchoolBookEducationContentRight_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_HGroup2_i(),this._SchoolBookEducationContentRight_HGroup3_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0088);
               }
            }
         }
         addr008c:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group6_c(),this._SchoolBookEducationContentRight_LocaLabel2_i()];
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "skillPointContainer";
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0070);
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr00af);
         }
         addr0070:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0094:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  §§goto(addr009d);
               }
            }
            §§goto(addr00af);
         }
         addr009d:
         this.skillPointContainer = _loc1_;
         if(!(_loc3_ && _loc3_))
         {
            addr00af:
            BindingManager.executeBindings(this,"skillPointContainer",this.skillPointContainer);
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 25;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 25;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib3_c()];
                  if(!_loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr0079);
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "icon_skillpoint";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     addr0067:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0067);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr0071);
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "schoolBookText";
            if(!_loc2_)
            {
               _loc1_.id = "skillPointRangeLabel";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0051:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0072);
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr0051);
         }
         addr0072:
         this.skillPointRangeLabel = _loc1_;
         if(_loc3_ || Boolean(this))
         {
            addr0084:
            BindingManager.executeBindings(this,"skillPointRangeLabel",this.skillPointRangeLabel);
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib4_c(),this._SchoolBookEducationContentRight_LocaLabel3_i()];
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "educationDurationContainer";
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
                              this.educationDurationContainer = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"educationDurationContainer",this.educationDurationContainer);
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
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               addr0049:
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007c);
         }
         §§goto(addr0049);
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "schoolBookText";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "educationDurationLabel";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0070:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0081);
                        }
                     }
                     §§goto(addr008b);
                  }
                  addr0081:
                  this.educationDurationLabel = _loc1_;
                  if(!_loc2_)
                  {
                     addr008b:
                     BindingManager.executeBindings(this,"educationDurationLabel",this.educationDurationLabel);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr008b);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.height = 80;
               if(!_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "good_divider";
                  if(!_loc2_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0060);
      }
      
      private function _SchoolBookEducationContentRight_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_VGroup3_c()];
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr006f);
            }
         }
         addr0073:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_VGroup4_i(),this._SchoolBookEducationContentRight_HGroup5_c()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr009a:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr009e);
            }
            §§goto(addr009a);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_VGroup4_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  addr0034:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_LocaLabel4_i(),this._SchoolBookEducationContentRight_HGroup4_i()];
                     if(_loc3_ || _loc3_)
                     {
                        addr006b:
                        _loc1_.id = "pricesContainer";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008e:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr0097:
                                    this.pricesContainer = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00a9:
                                       BindingManager.executeBindings(this,"pricesContainer",this.pricesContainer);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr008e);
            }
            §§goto(addr0034);
         }
         §§goto(addr006b);
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "schoolBookText";
            if(!_loc2_)
            {
               _loc1_.id = "pricesLabel";
               if(!_loc2_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0073:
                           this.pricesLabel = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0085:
                              BindingManager.executeBindings(this,"pricesLabel",this.pricesLabel);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr0085);
                     }
                     addr0092:
                     return _loc1_;
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0056);
            }
            §§goto(addr004a);
         }
         §§goto(addr0056);
      }
      
      private function _SchoolBookEducationContentRight_HGroup4_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib6_c(),this._SchoolBookEducationContentRight_LocaLabel5_i(),this._SchoolBookEducationContentRight_BriskImageDynaLib7_i()];
                     if(_loc2_)
                     {
                        addr0075:
                        _loc1_.id = "epGroup";
                        if(_loc2_ || _loc2_)
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0094:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00b1:
                                    this.epGroup = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       BindingManager.executeBindings(this,"epGroup",this.epGroup);
                                    }
                                 }
                                 §§goto(addr00d0);
                              }
                           }
                           §§goto(addr00b1);
                        }
                     }
                     addr00d0:
                     return _loc1_;
                  }
                  §§goto(addr0088);
               }
               §§goto(addr00b1);
            }
            §§goto(addr0094);
         }
         §§goto(addr0075);
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ep_icon";
               if(!(_loc2_ && _loc3_))
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0079:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0079);
            }
            addr007d:
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "schoolBookText";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "priceLabel";
               if(_loc2_)
               {
                  addr0052:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr0086);
                     }
                  }
                  addr007c:
                  this.priceLabel = _loc1_;
                  if(!_loc3_)
                  {
                     addr0086:
                     BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0052);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.width = 31;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.height = 26;
                     if(_loc3_)
                     {
                        addr006f:
                        _loc1_.id = "checkMark";
                        if(_loc3_)
                        {
                           addr007a:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00ab:
                                    this.checkMark = _loc1_;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"checkMark",this.checkMark);
                                    }
                                 }
                                 §§goto(addr00ca);
                              }
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr007a);
            }
            addr00ca:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _SchoolBookEducationContentRight_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  §§goto(addr005d);
               }
               §§goto(addr008a);
            }
            addr005d:
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group8_c(),this._SchoolBookEducationContentRight_DynamicPlusButton1_i()];
               if(!_loc2_)
               {
                  §§goto(addr007e);
               }
               §§goto(addr008a);
            }
            §§goto(addr007e);
         }
         addr007e:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr008a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_LocaLabel6_i(),this._SchoolBookEducationContentRight_MultistateButton1_i()];
               if(!_loc2_)
               {
                  §§goto(addr0061);
               }
            }
            §§goto(addr0075);
         }
         addr0061:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr0075:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel6_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.styleName = "residentialProgressComment";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "dextroPriceLabel";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a9:
                                 this.dextroPriceLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00b3:
                                    BindingManager.executeBindings(this,"dextroPriceLabel",this.dextroPriceLabel);
                                 }
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00a9);
                     }
                  }
               }
               §§goto(addr00c0);
            }
            §§goto(addr0078);
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__buySkillsPointsButton_click);
               if(_loc2_)
               {
                  _loc1_.id = "buySkillsPointsButton";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr00a0);
                     }
                     addr008e:
                     this.buySkillsPointsButton = _loc1_;
                     if(_loc2_ || Boolean(this))
                     {
                        addr00a0:
                        BindingManager.executeBindings(this,"buySkillsPointsButton",this.buySkillsPointsButton);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr006f);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      public function __buySkillsPointsButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handlePointBuyClick(param1);
         }
      }
      
      private function _SchoolBookEducationContentRight_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!_loc3_)
         {
            _loc1_.width = 40;
            if(!_loc3_)
            {
               _loc1_.iconImageName = "btn_icon_dextro";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0042:
                  _loc1_.iconLibName = "gui_popups_schoolBook";
                  if(_loc2_ || _loc2_)
                  {
                     addr0056:
                     _loc1_.showSparkle = true;
                     if(!_loc3_)
                     {
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.addEventListener("click",this.__dextroButton_click);
                           if(!_loc3_)
                           {
                              addr0097:
                              _loc1_.addEventListener("mouseOver",this.__dextroButton_mouseOver);
                              if(!_loc3_)
                              {
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00d2);
                           }
                        }
                        addr00a7:
                        _loc1_.addEventListener("mouseOut",this.__dextroButton_mouseOut);
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.id = "dextroButton";
                           if(_loc2_ || _loc2_)
                           {
                              addr00d2:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00fb:
                                       this.dextroButton = _loc1_;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr010d:
                                          BindingManager.executeBindings(this,"dextroButton",this.dextroButton);
                                       }
                                    }
                                    §§goto(addr011a);
                                 }
                              }
                              §§goto(addr00fb);
                           }
                           §§goto(addr010d);
                        }
                        §§goto(addr011a);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr0056);
            }
            addr011a:
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      public function __dextroButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleDextroBuyClick(param1);
         }
      }
      
      public function __dextroButton_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.buySkillsPointsButton.visible = false;
         }
      }
      
      public function __dextroButton_mouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(this.buySkillsPointsButton);
            §§push(this._skillPointPrice == 0);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
            }
            §§pop().visible = §§pop();
         }
      }
      
      private function _SchoolBookEducationContentRight_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.paddingLeft = 10;
               if(!_loc2_)
               {
                  _loc1_.bottom = 5;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr005b);
            }
            §§goto(addr006e);
         }
         addr005b:
         _loc1_.paddingRight = 10;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_HGroup7_c(),this._SchoolBookEducationContentRight_MultistateButton3_i()];
            addr006e:
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr00ab:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00af);
            }
            §§goto(addr00ab);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 4;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_TimerBarComponent1_i(),this._SchoolBookEducationContentRight_LocaLabel7_i(),this._SchoolBookEducationContentRight_MultistateButton2_i()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr008a:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0096:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr008a);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr0096);
      }
      
      private function _SchoolBookEducationContentRight_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc2_)
         {
            _loc1_.showBoostButton = false;
            if(!_loc2_)
            {
               _loc1_.maxWidth = 137;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.minWidth = 137;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "educationTimer";
                     if(!_loc2_)
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr009f);
                              }
                              §§goto(addr00b1);
                           }
                        }
                        addr009f:
                        this.educationTimer = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr00b1:
                           BindingManager.executeBindings(this,"educationTimer",this.educationTimer);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00b1);
                  }
                  addr00be:
                  return _loc1_;
               }
            }
            §§goto(addr009f);
         }
         §§goto(addr006d);
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel7_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.maxWidth = 137;
               if(_loc2_ || _loc2_)
               {
                  addr004c:
                  _loc1_.minWidth = 137;
                  if(_loc2_)
                  {
                     _loc1_.maxDisplayedLines = 2;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006b:
                        _loc1_.styleName = "residentialProgressComment";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.visible = false;
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.includeInLayout = false;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 _loc1_.text = "DEV: buy this for 123MM";
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr0107);
                              }
                              addr00c1:
                              _loc1_.id = "infoLabel";
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00d4:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00e8:
                                       _loc1_.document = this;
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr0119);
                                    }
                                 }
                                 addr0107:
                                 this.infoLabel = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr0119:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                              }
                              §§goto(addr0126);
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr0107);
               }
               §§goto(addr006b);
            }
            §§goto(addr004c);
         }
         addr0126:
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 40;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.imageNameLeft = "dd_button_icon";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.libNameLeft = "gui_resources_icons";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005a:
                     _loc1_.useConfirmation = true;
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("rollOver",this.__boostButton_rollOver);
                        addr0064:
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.addEventListener("rollOut",this.__boostButton_rollOut);
                           if(_loc3_)
                           {
                              addr0098:
                              _loc1_.addEventListener("click",this.__boostButton_click);
                              if(_loc3_)
                              {
                                 addr00a8:
                                 _loc1_.id = "boostButton";
                                 if(!_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             addr00dd:
                                             this.boostButton = _loc1_;
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr00ef:
                                                BindingManager.executeBindings(this,"boostButton",this.boostButton);
                                             }
                                          }
                                       }
                                       return _loc1_;
                                    }
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00ef);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00dd);
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0064);
            }
            §§goto(addr00dd);
         }
         §§goto(addr005a);
      }
      
      public function __boostButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.boostButton_rollOverHandler(param1);
         }
      }
      
      public function __boostButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.boostButton_rollOutHandler(param1);
         }
      }
      
      public function __boostButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.boostButton_clickHandler(param1);
         }
      }
      
      private function _SchoolBookEducationContentRight_MultistateButton3_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.imageNameLeft = "button_icon_education";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006f:
                     _loc1_.addEventListener("click",this.__startButton_click);
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.id = "startButton";
                        if(_loc2_)
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00bb:
                                    this.startButton = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00c5:
                                       BindingManager.executeBindings(this,"startButton",this.startButton);
                                    }
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00bb);
                        }
                        addr00d2:
                        return _loc1_;
                     }
                     §§goto(addr00c5);
                  }
               }
            }
            §§goto(addr0092);
         }
         §§goto(addr006f);
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleStartClick(param1);
         }
      }
      
      public function ___SchoolBookEducationContentRight_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boostButton() : MultistateButton
      {
         return this._1322365109boostButton;
      }
      
      public function set boostButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1322365109boostButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1322365109boostButton = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr0069);
               }
               addr0051:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boostButton",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get buySkillsPointsButton() : MultistateButton
      {
         return this._1578852477buySkillsPointsButton;
      }
      
      public function set buySkillsPointsButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1578852477buySkillsPointsButton;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1578852477buySkillsPointsButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buySkillsPointsButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._398367733checkMark;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._398367733checkMark = param1;
                  addr003d:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
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
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get dextroButton() : DynamicPlusButton
      {
         return this._443494924dextroButton;
      }
      
      public function set dextroButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._443494924dextroButton;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._443494924dextroButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dextroButton",_loc2_,param1));
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
      public function get dextroPriceLabel() : LocaLabel
      {
         return this._1632808699dextroPriceLabel;
      }
      
      public function set dextroPriceLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1632808699dextroPriceLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1632808699dextroPriceLabel = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0075);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dextroPriceLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get educationContent() : HGroup
      {
         return this._1414006863educationContent;
      }
      
      public function set educationContent(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1414006863educationContent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1414006863educationContent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0068);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationContent",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get educationDurationContainer() : HGroup
      {
         return this._858045819educationDurationContainer;
      }
      
      public function set educationDurationContainer(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._858045819educationDurationContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._858045819educationDurationContainer = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006c);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationDurationContainer",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get educationDurationLabel() : LocaLabel
      {
         return this._734861048educationDurationLabel;
      }
      
      public function set educationDurationLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._734861048educationDurationLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._734861048educationDurationLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationDurationLabel",_loc2_,param1));
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
      public function get educationPointsHeader() : HeaderComponentSmall
      {
         return this._1207421672educationPointsHeader;
      }
      
      public function set educationPointsHeader(param1:HeaderComponentSmall) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1207421672educationPointsHeader;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1207421672educationPointsHeader = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationPointsHeader",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get educationTimer() : TimerBarComponent
      {
         return this._1792817277educationTimer;
      }
      
      public function set educationTimer(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1792817277educationTimer;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1792817277educationTimer = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0075);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationTimer",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get epGroup() : HGroup
      {
         return this._1575867244epGroup;
      }
      
      public function set epGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1575867244epGroup;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1575867244epGroup = param1;
                  addr0042:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1213523686infoLabel = param1;
                  addr003d:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
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
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get noMoreStepsLabel() : LocaLabel
      {
         return this._1264025245noMoreStepsLabel;
      }
      
      public function set noMoreStepsLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1264025245noMoreStepsLabel;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1264025245noMoreStepsLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noMoreStepsLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1481293013priceLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1481293013priceLabel = param1;
                  addr0036:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricesContainer() : VGroup
      {
         return this._1939953833pricesContainer;
      }
      
      public function set pricesContainer(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1939953833pricesContainer;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1939953833pricesContainer = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricesContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricesLabel() : LocaLabel
      {
         return this._1873300278pricesLabel;
      }
      
      public function set pricesLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1873300278pricesLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1873300278pricesLabel = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricesLabel",_loc2_,param1));
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
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPointContainer() : HGroup
      {
         return this._423293566skillPointContainer;
      }
      
      public function set skillPointContainer(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._423293566skillPointContainer;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._423293566skillPointContainer = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPointRangeLabel() : LocaLabel
      {
         return this._2079322838skillPointRangeLabel;
      }
      
      public function set skillPointRangeLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2079322838skillPointRangeLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._2079322838skillPointRangeLabel = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointRangeLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007e);
            }
         }
         addr008d:
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1943111220startButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1943111220startButton = param1;
                  addr0047:
                  if(_loc4_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
   }
}

