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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.EducationAttributeVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.ScrollTextItemRenderer;
   import net.bigpoint.cityrama.view.departmentBook.ui.skins.VScrollItemSkin;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class SchoolBookContentLeft extends Group
   {
      
      private var _3016318bar1:StatsProgressbar;
      
      private var _3016319bar2:StatsProgressbar;
      
      private var _3016320bar3:StatsProgressbar;
      
      private var _1790172313characterList:List;
      
      private var _1846981337informationHeader:HeaderComponentSmall;
      
      private var _899351961operationsHeader:HeaderComponentSmall;
      
      private var _1769452383operationsLeftLabel:LocaLabel;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _227692281skillPointsLeftLabel:LocaLabel;
      
      private var _951519628statPointsBadge:BriskImageDynaLib;
      
      private var _151014688statsGroup:VGroup;
      
      private var _155112853statsLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _unassignedSkillPoints:int;
      
      public function SchoolBookContentLeft()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               addr0030:
               if(_loc2_)
               {
                  this.mxmlContent = [this._SchoolBookContentLeft_BriskImageDynaLib1_c(),this._SchoolBookContentLeft_VGroup1_c()];
                  if(!(_loc1_ && _loc1_))
                  {
                     addr006a:
                     this.addEventListener("creationComplete",this.___SchoolBookContentLeft_Group1_creationComplete);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr006a);
            }
            addr0076:
            return;
         }
         §§goto(addr0030);
      }
      
      private static function getTraitThresHolds(param1:EducationAttributeVo) : Vector.<StatsProgressBarTraitThresholdsVo>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:StatsProgressBarTraitThresholdsVo = null;
         var _loc2_:Vector.<StatsProgressBarTraitThresholdsVo> = new Vector.<StatsProgressBarTraitThresholdsVo>(0);
         §§push(param1.maxCap);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in param1.attributeThresholds)
         {
            _loc5_ = new StatsProgressBarTraitThresholdsVo();
            if(_loc8_)
            {
               if(_loc4_.type != ServerProfessionalConstants.TRAIT_UNLOCK)
               {
                  continue;
               }
               if(_loc8_)
               {
                  addr008e:
                  if(_loc4_.threshold > param1.attributePoints + param1.tempMod)
                  {
                     if(!(_loc9_ && SchoolBookContentLeft))
                     {
                        _loc5_.tier = _loc4_.value;
                        if(_loc9_ && SchoolBookContentLeft)
                        {
                           continue;
                        }
                        addr00d5:
                        _loc5_.thresholdScalar = _loc4_.threshold / _loc3_;
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc2_.push(_loc5_);
                  }
                  continue;
               }
               §§goto(addr00d5);
            }
            §§goto(addr008e);
         }
         return _loc2_;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0047);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0052);
            }
            addr0047:
            return;
         }
         addr0052:
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
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.informationHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.information");
            if(_loc1_ || _loc1_)
            {
               §§goto(addr0051);
            }
            §§goto(addr0069);
         }
         addr0051:
         this.operationsHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.operations");
         if(!_loc2_)
         {
            addr0069:
            this.statsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.stats");
         }
      }
      
      public function set studentData(param1:ProfessionalSlotVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.professionalSlot.data = param1;
            if(!(_loc2_ && _loc2_))
            {
               this.operationsLeftLabel.text = param1.operationsLeft.toString();
               if(!_loc2_)
               {
                  this.characteristics = param1.traits;
               }
            }
         }
      }
      
      private function set characteristics(param1:Vector.<CharacteristicsEntryVo>) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:int = 0;
         var _loc2_:ArrayCollection = new ArrayCollection();
         if(!_loc5_)
         {
            if(param1.length)
            {
               if(_loc4_)
               {
                  _loc3_ = 0;
                  addr003f:
               }
               do
               {
                  if(_loc3_ >= param1.length)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§goto(addr0083);
                  }
                  _loc2_.addItem(param1[_loc3_]);
                  if(!_loc4_)
                  {
                     break;
                  }
                  _loc3_++;
               }
               while(_loc4_);
               
            }
            this.characterList.dataProvider = _loc2_;
            addr0083:
            return;
         }
         §§goto(addr003f);
      }
      
      public function set skillPointsAvailable(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.skillPointsLeftLabel.text = param1.toString();
            if(_loc3_ || _loc3_)
            {
               addr0045:
               this.bar1.enablePlusClick = param1 > 0;
               if(_loc3_)
               {
                  this.bar3.enablePlusClick = param1 > 0;
                  if(!_loc2_)
                  {
                     addr0071:
                     this.bar2.enablePlusClick = param1 > 0;
                     if(_loc3_ || _loc3_)
                     {
                        addr0089:
                        this._unassignedSkillPoints = param1;
                     }
                  }
                  return;
               }
               §§goto(addr0089);
            }
            §§goto(addr0071);
         }
         §§goto(addr0045);
      }
      
      public function get skillPointsAvailable() : int
      {
         return this._unassignedSkillPoints;
      }
      
      public function set attributes(param1:Vector.<EducationAttributeVo>) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:EducationAttributeVo = null;
         var _loc2_:Vector.<StatsProgressbar> = new <StatsProgressbar>[this.bar1,this.bar2,this.bar3];
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = param1;
         while(true)
         {
            for each(_loc4_ in _loc6_)
            {
               if(!_loc7_)
               {
                  _loc2_[_loc3_].styleName = _loc4_.attributeType;
                  if(!_loc7_)
                  {
                     _loc2_[_loc3_].type = _loc4_.attributeType;
                     if(_loc8_ || Boolean(this))
                     {
                        _loc2_[_loc3_].progress = (_loc4_.attributePoints + _loc4_.tempMod) / _loc4_.maxCap;
                        if(_loc8_)
                        {
                           _loc2_[_loc3_].traitThresholds = getTraitThresHolds(_loc4_);
                           if(_loc7_ && Boolean(param1))
                           {
                              break;
                           }
                        }
                        _loc2_[_loc3_].enablePlusClick = this.unassignedSkillPoints && (_loc4_.attributePoints + _loc4_.tempMod) / _loc4_.maxCap != 1;
                        addr00e5:
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           addr011b:
                           _loc3_++;
                           if(!(_loc8_ || Boolean(_loc3_)))
                           {
                              continue;
                           }
                        }
                        addr0135:
                        if(_loc3_ > _loc2_.length)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr011b);
                  }
                  §§goto(addr0135);
               }
               §§goto(addr00e5);
            }
            return;
         }
         throw new RamaCityError(this + " UI supports max 3 Attributes ATM");
      }
      
      public function set educationFinished(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.bar1);
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            §§pop().enablePlusClick = §§pop();
            if(_loc2_)
            {
               §§push(this.bar3);
               §§push(param1);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().enablePlusClick = §§pop();
               if(_loc2_ || _loc2_)
               {
                  §§push(this.bar2);
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().enablePlusClick = §§pop();
                  if(_loc2_ || param1)
                  {
                     addr0075:
                     §§push(this.skillPointsLeftLabel);
                     §§push(param1);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().visible = §§pop();
                     if(_loc2_)
                     {
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr009c);
            }
            §§goto(addr0075);
         }
         addr009c:
         §§push(this.statPointsBadge);
         §§push(param1);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         §§pop().visible = §§pop();
         if(_loc2_ || Boolean(this))
         {
            addr00b6:
            this.checkActiveEmergencyFeature();
         }
      }
      
      private function checkActiveEmergencyFeature() : void
      {
      }
      
      public function get unassignedSkillPoints() : Boolean
      {
         return this._unassignedSkillPoints > 0;
      }
      
      private function _SchoolBookContentLeft_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quadrillepaper_breit";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_schoolBook";
               if(_loc3_)
               {
                  addr0046:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _SchoolBookContentLeft_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0030:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.paddingTop = 20;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.paddingRight = 20;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._SchoolBookContentLeft_HGroup1_c(),this._SchoolBookContentLeft_Group4_c(),this._SchoolBookContentLeft_VGroup3_i()];
                        if(_loc2_)
                        {
                           addr0094:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a8:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00a8);
                     }
                     addr00ac:
                     return _loc1_;
                  }
                  §§goto(addr0094);
               }
            }
            §§goto(addr00a8);
         }
         §§goto(addr0030);
      }
      
      private function _SchoolBookContentLeft_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.paddingLeft = 10;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookContentLeft_SpecialistSlotComponent1_i(),this._SchoolBookContentLeft_VGroup2_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr008b:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008f);
                  }
               }
            }
            §§goto(addr008b);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 10;
               if(_loc3_)
               {
                  _loc1_.id = "professionalSlot";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0084);
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr007b);
            }
            addr0084:
            this.professionalSlot = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr0096:
               BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
            }
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _SchoolBookContentLeft_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookContentLeft_HeaderComponentSmall1_i(),this._SchoolBookContentLeft_Group2_c(),this._SchoolBookContentLeft_Group3_c()];
                  addr004c:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0091:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr0091);
            }
            §§goto(addr004c);
         }
         addr0095:
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "informationHeader";
               if(!(_loc3_ && _loc2_))
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr007e);
            }
            addr006d:
            _loc1_.document = this;
            if(_loc2_ || _loc3_)
            {
               addr007e:
               this.informationHeader = _loc1_;
               if(!_loc3_)
               {
                  addr0088:
                  BindingManager.executeBindings(this,"informationHeader",this.informationHeader);
               }
            }
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _SchoolBookContentLeft_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr003a:
               _loc1_.height = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookContentLeft_List1_i()];
                  §§goto(addr0044);
               }
               §§goto(addr007d);
            }
            addr0044:
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _SchoolBookContentLeft_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.left = 14;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.top = 4;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.itemRenderer = this._SchoolBookContentLeft_ClassFactory1_c();
                        if(!_loc2_)
                        {
                           addr0083:
                           _loc1_.setStyle("horizontalScrollPolicy","off");
                           if(!_loc2_)
                           {
                              _loc1_.setStyle("skinClass",VScrollItemSkin);
                              if(!_loc2_)
                              {
                                 addr00a1:
                                 _loc1_.id = "characterList";
                                 if(_loc3_)
                                 {
                                    addr00ac:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00cd:
                                          _loc1_.document = this;
                                          if(_loc3_)
                                          {
                                             addr00d6:
                                             this.characterList = _loc1_;
                                             if(_loc3_)
                                             {
                                                addr00e0:
                                                BindingManager.executeBindings(this,"characterList",this.characterList);
                                             }
                                             §§goto(addr00ed);
                                          }
                                          §§goto(addr00e0);
                                       }
                                       addr00ed:
                                       return _loc1_;
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00d6);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr00a1);
               }
            }
            §§goto(addr0083);
         }
         §§goto(addr00e0);
      }
      
      private function _SchoolBookContentLeft_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || _loc2_)
         {
            _loc1_.generator = ScrollTextItemRenderer;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._SchoolBookContentLeft_HeaderComponentSmall2_i(),this._SchoolBookContentLeft_LocaLabel1_i()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0071);
               }
            }
            §§goto(addr006d);
         }
         addr0071:
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HeaderComponentSmall2_i() : HeaderComponentSmall
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "operationsHeader";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0080);
                        }
                        §§goto(addr008a);
                     }
                  }
                  addr0080:
                  this.operationsHeader = _loc1_;
                  if(_loc2_)
                  {
                     addr008a:
                     BindingManager.executeBindings(this,"operationsHeader",this.operationsHeader);
                  }
                  §§goto(addr0097);
               }
               addr0097:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr008a);
      }
      
      private function _SchoolBookContentLeft_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalCenter = 1;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.right = 30;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0058);
               }
               §§goto(addr00ba);
            }
            addr0058:
            _loc1_.styleName = "schoolBookText";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "operationsLeftLabel";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr009f:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr00b0);
                        }
                        §§goto(addr00ba);
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00ba);
            }
            addr00b0:
            this.operationsLeftLabel = _loc1_;
            if(_loc3_)
            {
               addr00ba:
               BindingManager.executeBindings(this,"operationsLeftLabel",this.operationsLeftLabel);
            }
            return _loc1_;
         }
         §§goto(addr009f);
      }
      
      private function _SchoolBookContentLeft_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc3_))
            {
               addr0050:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _SchoolBookContentLeft_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.bottom = 0;
               if(_loc2_)
               {
                  _loc1_.paddingLeft = 20;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.paddingBottom = 10;
                     if(!_loc3_)
                     {
                        _loc1_.gap = 0;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._SchoolBookContentLeft_Group5_c(),this._SchoolBookContentLeft_StatsProgressbar1_i(),this._SchoolBookContentLeft_StatsProgressbar2_i(),this._SchoolBookContentLeft_StatsProgressbar3_i()];
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0096:
                              _loc1_.id = "statsGroup";
                              if(_loc2_)
                              {
                                 addr00a1:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00c4:
                                       _loc1_.document = this;
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr00d5);
                                       }
                                    }
                                    §§goto(addr00df);
                                 }
                                 addr00d5:
                                 this.statsGroup = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00df:
                                    BindingManager.executeBindings(this,"statsGroup",this.statsGroup);
                                 }
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00df);
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00a1);
               }
               addr00ec:
               return _loc1_;
            }
            §§goto(addr00c4);
         }
         §§goto(addr0096);
      }
      
      private function _SchoolBookContentLeft_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._SchoolBookContentLeft_HeaderComponentSmall3_c(),this._SchoolBookContentLeft_LocaLabel2_i(),this._SchoolBookContentLeft_LocaLabel3_i(),this._SchoolBookContentLeft_BriskImageDynaLib2_i()];
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0084:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0084);
            }
         }
         addr0088:
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HeaderComponentSmall3_c() : HeaderComponentSmall
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr005d);
               }
            }
            §§goto(addr0071);
         }
         addr005d:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0071:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 40;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.styleName = "emergencySuccessBarLabel";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.id = "statsLabel";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00b0);
                                 }
                              }
                              §§goto(addr00c2);
                           }
                        }
                        §§goto(addr00b0);
                     }
                  }
                  §§goto(addr0088);
               }
               addr00b0:
               this.statsLabel = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00c2:
                  BindingManager.executeBindings(this,"statsLabel",this.statsLabel);
               }
               return _loc1_;
            }
            §§goto(addr0088);
         }
         §§goto(addr00c2);
      }
      
      private function _SchoolBookContentLeft_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.right = 30;
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 1;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.styleName = "schoolBookText";
                  if(_loc2_ || _loc2_)
                  {
                     addr0062:
                     _loc1_.id = "skillPointsLeftLabel";
                     if(_loc2_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr009e);
                  }
               }
               addr006d:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0083:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr009e);
               }
               addr008c:
               this.skillPointsLeftLabel = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr009e:
                  BindingManager.executeBindings(this,"skillPointsLeftLabel",this.skillPointsLeftLabel);
               }
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr0062);
      }
      
      private function _SchoolBookContentLeft_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaBmpSourceName = "icon_skillpoint";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.right = 4;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "statPointsBadge";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr009e:
                                    this.statPointsBadge = _loc1_;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00b0:
                                       BindingManager.executeBindings(this,"statPointsBadge",this.statPointsBadge);
                                    }
                                    §§goto(addr00bd);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr009e);
                        }
                        addr00bd:
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr00b0);
            }
         }
         §§goto(addr009e);
      }
      
      private function _SchoolBookContentLeft_StatsProgressbar1_i() : StatsProgressbar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.id = "bar1";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0075);
                        }
                     }
                     §§goto(addr0087);
                  }
                  addr0075:
                  this.bar1 = _loc1_;
                  if(_loc2_ || _loc3_)
                  {
                     addr0087:
                     BindingManager.executeBindings(this,"bar1",this.bar1);
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0075);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_StatsProgressbar2_i() : StatsProgressbar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr002c:
               _loc1_.id = "bar2";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr006c:
                           this.bar2 = _loc1_;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr007e:
                              BindingManager.executeBindings(this,"bar2",this.bar2);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr007e);
                  }
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr002c);
      }
      
      private function _SchoolBookContentLeft_StatsProgressbar3_i() : StatsProgressbar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.id = "bar3";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr0086);
                     }
                  }
               }
               §§goto(addr0074);
            }
            §§goto(addr0086);
         }
         addr0074:
         this.bar3 = _loc1_;
         if(!(_loc2_ && Boolean(this)))
         {
            addr0086:
            BindingManager.executeBindings(this,"bar3",this.bar3);
         }
         return _loc1_;
      }
      
      public function ___SchoolBookContentLeft_Group1_creationComplete(param1:FlexEvent) : void
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
      public function get bar1() : StatsProgressbar
      {
         return this._3016318bar1;
      }
      
      public function set bar1(param1:StatsProgressbar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3016318bar1;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3016318bar1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get bar2() : StatsProgressbar
      {
         return this._3016319bar2;
      }
      
      public function set bar2(param1:StatsProgressbar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3016319bar2;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._3016319bar2 = param1;
                  if(!_loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get bar3() : StatsProgressbar
      {
         return this._3016320bar3;
      }
      
      public function set bar3(param1:StatsProgressbar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3016320bar3;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3016320bar3 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0062);
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
      }
      
      [Bindable(event="propertyChange")]
      public function get characterList() : List
      {
         return this._1790172313characterList;
      }
      
      public function set characterList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1790172313characterList;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1790172313characterList = param1;
                  addr003d:
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006c);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterList",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get informationHeader() : HeaderComponentSmall
      {
         return this._1846981337informationHeader;
      }
      
      public function set informationHeader(param1:HeaderComponentSmall) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1846981337informationHeader;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1846981337informationHeader = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationHeader",_loc2_,param1));
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
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get operationsHeader() : HeaderComponentSmall
      {
         return this._899351961operationsHeader;
      }
      
      public function set operationsHeader(param1:HeaderComponentSmall) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._899351961operationsHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._899351961operationsHeader = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationsHeader",_loc2_,param1));
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
      public function get operationsLeftLabel() : LocaLabel
      {
         return this._1769452383operationsLeftLabel;
      }
      
      public function set operationsLeftLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1769452383operationsLeftLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1769452383operationsLeftLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationsLeftLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalSlot() : SpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SpecialistSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1795780411professionalSlot;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1795780411professionalSlot = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPointsLeftLabel() : LocaLabel
      {
         return this._227692281skillPointsLeftLabel;
      }
      
      public function set skillPointsLeftLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._227692281skillPointsLeftLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._227692281skillPointsLeftLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointsLeftLabel",_loc2_,param1));
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
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get statPointsBadge() : BriskImageDynaLib
      {
         return this._951519628statPointsBadge;
      }
      
      public function set statPointsBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._951519628statPointsBadge;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._951519628statPointsBadge = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statPointsBadge",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr005a);
            }
            addr0078:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get statsGroup() : VGroup
      {
         return this._151014688statsGroup;
      }
      
      public function set statsGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._151014688statsGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._151014688statsGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get statsLabel() : LocaLabel
      {
         return this._155112853statsLabel;
      }
      
      public function set statsLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._155112853statsLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._155112853statsLabel = param1;
                  if(!_loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0060);
            }
         }
         addr0087:
      }
   }
}

