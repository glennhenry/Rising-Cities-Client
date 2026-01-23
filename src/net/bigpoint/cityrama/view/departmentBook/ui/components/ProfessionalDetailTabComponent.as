package net.bigpoint.cityrama.view.departmentBook.ui.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalAttributeVO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SpecialistSlotComponent;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ProfessionalDetailTabComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1016580566attributeOne:StatsProgressbar;
      
      private var _1971893150attributeThree:StatsProgressbar;
      
      private var _1016575472attributeTwo:StatsProgressbar;
      
      private var _719353435characteristicsComponent:ProfessionalCharacteristicsComponent;
      
      private var _1112078072fireButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1146996379levelProgressBarComponent:ProgressBarComponent;
      
      private var _843713104levelbarGroup:Group;
      
      private var _1314010559maxlevelGroup:Group;
      
      private var _1318108724maxlevelLabel:LocaLabel;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _227692281skillPointsLeftLabel:LocaLabel;
      
      private var _951519628statPointsBadge:BriskImageDynaLib;
      
      private var _155112853statsLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DepartmentProfessionalDetailInfoVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProfessionalDetailTabComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0047:
                     §§pop().§§slot[5] = null;
                     if(_loc4_ || Boolean(this))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(_loc4_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._ProfessionalDetailTabComponent_bindingsSetup();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr0106:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            addr0111:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr012d:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_components_ProfessionalDetailTabComponentWatcherSetupUtil");
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        addr0157:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr0166:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr017c:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ProfessionalDetailTabComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr019a:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr01c8:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.percentHeight = 100;
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr0201:
                                                                                          this.percentWidth = 100;
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             addr0214:
                                                                                             this.mxmlContent = [this._ProfessionalDetailTabComponent_HGroup1_c(),this._ProfessionalDetailTabComponent_Group2_c(),this._ProfessionalDetailTabComponent_Group8_i(),this._ProfessionalDetailTabComponent_Group9_i(),this._ProfessionalDetailTabComponent_Group13_c()];
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr023f:
                                                                                                i = 0;
                                                                                                addr023d:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       var _temp_18:*;
                                                                                       loop0:
                                                                                       do
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          loop1:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[4]);
                                                                                             loop2:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                while(§§pop() < §§pop().§§slot[1].length)
                                                                                                {
                                                                                                   Binding(bindings[i]).execute();
                                                                                                   if(_loc3_ && Boolean(this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      if(_loc4_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, !(_loc3_ && _loc3_));
                                                                                       
                                                                                       return;
                                                                                       addr02b1:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr023d);
                                                                              }
                                                                              §§goto(addr0214);
                                                                           }
                                                                           §§goto(addr02b1);
                                                                        }
                                                                        §§goto(addr023f);
                                                                     }
                                                                     §§goto(addr019a);
                                                                  }
                                                                  §§goto(addr023f);
                                                               }
                                                               §§goto(addr02b1);
                                                            }
                                                         }
                                                         §§goto(addr017c);
                                                      }
                                                      §§goto(addr023f);
                                                   }
                                                   §§goto(addr01c8);
                                                }
                                                §§goto(addr0106);
                                             }
                                             §§goto(addr0157);
                                          }
                                          §§goto(addr0166);
                                       }
                                       §§goto(addr02b1);
                                    }
                                    §§goto(addr0111);
                                 }
                                 §§goto(addr019a);
                              }
                              §§goto(addr0201);
                           }
                        }
                        §§goto(addr02b1);
                     }
                     §§goto(addr017c);
                  }
                  §§goto(addr012d);
               }
               §§goto(addr023d);
            }
            §§goto(addr0047);
         }
         §§goto(addr023f);
      }
      
      private static function traitWillBeUnlocked(param1:ProfessionalAttributeVO) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.traitThresholds;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               §§push(_loc2_.threshold > param1.amount);
               if(!(_loc5_ && ProfessionalDetailTabComponent))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§pop();
                        if(!(_loc6_ || Boolean(_loc2_)))
                        {
                           continue;
                        }
                        §§push(param1.amount + param1.tempMod >= _loc2_.threshold);
                        if(!_loc5_)
                        {
                           addr009e:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr00a9);
                  }
               }
               §§goto(addr009e);
            }
            return false;
         }
         addr00a9:
         true;
         return §§pop();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            ProfessionalDetailTabComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr003d);
                  }
               }
               §§goto(addr0043);
            }
            addr003d:
            return;
         }
         addr0043:
         this.__moduleFactoryInitialized = true;
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
      
      public function set data(param1:DepartmentProfessionalDetailInfoVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._isDirty = true;
                  if(_loc3_)
                  {
                     this._data = param1;
                     if(_loc3_)
                     {
                        addr0055:
                        invalidateProperties();
                     }
                     §§goto(addr005a);
                  }
               }
               §§goto(addr0055);
            }
            addr005a:
            return;
         }
         §§goto(addr0055);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(this._data));
               if(!_loc1_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr006f);
                  }
                  addr0070:
                  §§goto(addr0054);
               }
               §§goto(addr006f);
            }
            addr0054:
            §§push(this._isDirty);
            if(!(_loc1_ && _loc1_))
            {
               addr006f:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!_loc1_)
               {
                  addr0079:
                  this._isDirty = false;
                  if(_loc2_ || Boolean(this))
                  {
                     addr008b:
                     this.fillContent();
                  }
                  §§goto(addr0091);
               }
               §§goto(addr008b);
            }
            addr0091:
            return;
         }
         §§goto(addr0079);
      }
      
      private function fillContent() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.flavourText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professionalDetail.flavour");
            if(!_loc3_)
            {
               §§push(this.fireButton);
               if(_loc2_ || _loc1_)
               {
                  §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professional.fire"));
                  if(!(_loc3_ && _loc1_))
                  {
                     §§pop().label = §§pop();
                     if(!(_loc3_ && _loc1_))
                     {
                        this.statsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.stats");
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.labelDisplay);
                           §§push(LocaUtils);
                           §§push("rcl.booklayer.departmentBook");
                           if(_loc2_)
                           {
                              §§push("");
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a5:
                                 §§push(§§pop() + §§pop());
                                 §§push("rcl.booklayer.departmentBook.professional.step");
                              }
                              §§pop().text = §§pop().getString(§§pop(),§§pop(),[this._data.currentLevel]);
                              if(!_loc3_)
                              {
                                 §§push(this.fireButton);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00d8:
                                    §§pop().toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.fireSpecialist");
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(this.levelProgressBarComponent);
                                       if(!_loc3_)
                                       {
                                          §§pop().progress = this._data.levelProgressScalar;
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(this._data);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().currentLevel);
                                                if(!_loc3_)
                                                {
                                                   if(§§pop() >= this._data.maxLevel)
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         var _temp_10:* = this.levelbarGroup;
                                                         var _loc1_:Boolean;
                                                         this.levelbarGroup.includeInLayout = _loc1_ = false;
                                                         _temp_10.visible = _loc1_;
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            var _temp_12:* = this.maxlevelGroup;
                                                            this.maxlevelGroup.includeInLayout = _loc1_ = true;
                                                            _temp_12.visible = _loc1_;
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               addr016f:
                                                               this.maxlevelGroup.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.maxlevel");
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr01cc);
                                                               }
                                                               §§goto(addr02ed);
                                                            }
                                                            §§goto(addr026f);
                                                         }
                                                         §§goto(addr030b);
                                                      }
                                                      §§goto(addr02ca);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.levelbarGroup);
                                                      this.levelbarGroup.includeInLayout = _loc1_ = true;
                                                      §§pop().visible = _loc1_;
                                                      if(!_loc3_)
                                                      {
                                                         var _temp_24:* = this.maxlevelGroup;
                                                         this.maxlevelGroup.includeInLayout = _loc1_ = false;
                                                         _temp_24.visible = _loc1_;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr01cc:
                                                            this.maxlevelLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.maxlevelreached",[this._data.name]);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               addr01f4:
                                                               addr01f8:
                                                               §§push(this.levelProgressBarComponent);
                                                               §§push(LocaUtils);
                                                               §§push("rcl.tooltips.departmentBook");
                                                               §§push("rcl.tooltips.departmentBook.levelprogress");
                                                               §§push(this._data.nextLevelXpThreshold);
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§push(this._data);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(§§pop().currentXp);
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        addr0233:
                                                                        addr022f:
                                                                        §§push(§§pop() - §§pop());
                                                                        §§push(this._data.currentXp);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(this._data);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop().lastLevelXpThreshold);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr0252:
                                                                                 addr024e:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 §§push(this._data.nextLevelXpThreshold);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() - this._data.lastLevelXpThreshold);
                                                                                 }
                                                                              }
                                                                              §§pop().toolTip = §§pop().getString(§§pop(),§§pop(),null);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr026f:
                                                                                 this.characteristicsComponent.data = this._data;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0282:
                                                                                    this.fireButton.enabled = this._data.dismissIsUnlocked;
                                                                                    addr027e:
                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                    {
                                                                                       this.professionalSlot.data = this._data;
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          addr02b7:
                                                                                          addr02b4:
                                                                                          if(this._data.unspentSkillPoints > 0)
                                                                                          {
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                addr02ca:
                                                                                                §§push(this.skillPointsLeftLabel);
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§pop().text = this._data.unspentSkillPoints.toString();
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr02ed:
                                                                                                      §§push(this.skillPointsLeftLabel);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         addr02f6:
                                                                                                         §§push(true);
                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                         {
                                                                                                            §§pop().visible = §§pop();
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               addr030b:
                                                                                                               §§push(this.statPointsBadge);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().visible = §§pop();
                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr0348);
                                                                                                                     }
                                                                                                                     §§goto(addr0357);
                                                                                                                  }
                                                                                                                  addr0348:
                                                                                                                  this.statPointsBadge.visible = false;
                                                                                                                  §§goto(addr0347);
                                                                                                               }
                                                                                                               addr0347:
                                                                                                               §§goto(addr0343);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr033c:
                                                                                                            §§pop().visible = §§pop();
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§goto(addr0343);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0357);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr033b:
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      §§goto(addr033c);
                                                                                                   }
                                                                                                   §§goto(addr030b);
                                                                                                }
                                                                                                §§goto(addr02f6);
                                                                                             }
                                                                                             §§goto(addr030b);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.skillPointsLeftLabel);
                                                                                          }
                                                                                          §§goto(addr033b);
                                                                                       }
                                                                                       §§goto(addr0357);
                                                                                    }
                                                                                    §§goto(addr030b);
                                                                                 }
                                                                                 §§goto(addr02ed);
                                                                              }
                                                                              §§goto(addr0357);
                                                                           }
                                                                           §§goto(addr0252);
                                                                        }
                                                                     }
                                                                     §§goto(addr024e);
                                                                  }
                                                                  §§goto(addr0233);
                                                               }
                                                               §§goto(addr022f);
                                                            }
                                                            §§goto(addr0343);
                                                         }
                                                         §§goto(addr01f4);
                                                      }
                                                   }
                                                   addr0343:
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      addr0357:
                                                      this.updateBars();
                                                   }
                                                   return;
                                                }
                                                §§goto(addr02b7);
                                             }
                                             §§goto(addr02b4);
                                          }
                                          §§goto(addr026f);
                                       }
                                       §§goto(addr01f8);
                                    }
                                    §§goto(addr016f);
                                 }
                                 §§goto(addr0282);
                              }
                              §§goto(addr01f4);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr030b);
                     }
                     §§goto(addr0357);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr0282);
            }
            §§goto(addr027e);
         }
         §§goto(addr016f);
      }
      
      private function updateBars() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:StatsProgressbar = null;
         var _loc1_:Vector.<StatsProgressbar> = new <StatsProgressbar>[this.attributeOne,this.attributeTwo,this.attributeThree];
         var _loc2_:int = 0;
         if(_loc8_ || Boolean(_loc3_))
         {
            if(this._data.attributes.length > _loc1_.length)
            {
               if(!(_loc7_ && Boolean(_loc1_)))
               {
                  throw new RamaCityError(this + "max displayed attributes currently 3");
               }
            }
         }
         for each(_loc3_ in _loc1_)
         {
            if(_loc8_)
            {
               if(this._data.attributes.length > _loc2_)
               {
                  if(_loc8_)
                  {
                     _loc3_.progress = this._data.attributes[_loc2_].progressScalar;
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        _loc3_.type = this._data.attributes[_loc2_].attributeType;
                        if(!_loc8_)
                        {
                           continue;
                        }
                        addr00ff:
                        _loc3_.styleName = this._data.attributes[_loc2_].attributeType;
                        if(!(_loc7_ && Boolean(_loc1_)))
                        {
                           _loc3_.visible = _loc3_.includeInLayout = true;
                           if(!_loc7_)
                           {
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                                 §§push(this._data);
                                 if(_loc8_)
                                 {
                                    var _temp_9:* = §§pop().unspentSkillPoints;
                                    §§push(_temp_9);
                                    if(_temp_9)
                                    {
                                       §§pop();
                                       addr0151:
                                       addr014d:
                                       §§push(this._data.attributes[_loc2_].progressScalar < 1);
                                       if(_loc8_)
                                       {
                                          addr0166:
                                          §§push(§§pop() > 0);
                                       }
                                       §§pop().enablePlusClick = §§pop();
                                       if(_loc8_)
                                       {
                                          addr0172:
                                          _loc3_.addEventListener(SchoolBookEvent.SCHOOL_USE_STAT_POINT,this.onStatClick);
                                          if(!(_loc8_ || Boolean(_loc3_)))
                                          {
                                             continue;
                                          }
                                       }
                                       addr01bb:
                                       _loc2_++;
                                       continue;
                                    }
                                    §§goto(addr0166);
                                 }
                                 §§goto(addr0151);
                              }
                              §§goto(addr014d);
                           }
                        }
                     }
                     §§goto(addr01bb);
                  }
                  §§goto(addr00ff);
               }
               else
               {
                  _loc3_.visible = _loc3_.includeInLayout = false;
                  if(_loc7_ && Boolean(_loc2_))
                  {
                     continue;
                  }
               }
               §§goto(addr01bb);
            }
            §§goto(addr0172);
         }
      }
      
      private function onStatClick(param1:SchoolBookEvent) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:AddSkillpointEvent = null;
         var _loc3_:ProfessionalAttributeVO = null;
         if(!_loc9_)
         {
            if(param1.currentTarget is StatsProgressbar)
            {
               addr0033:
               _loc2_ = new AddSkillpointEvent(AddSkillpointEvent.ADD);
               if(_loc8_)
               {
                  _loc2_.attributeType = StatsProgressbar(param1.currentTarget).type;
               }
               for each(_loc3_ in this._data.attributes)
               {
                  if(!(_loc9_ && Boolean(this)))
                  {
                     if(_loc3_.attributeType != StatsProgressbar(param1.currentTarget).type)
                     {
                        continue;
                     }
                     if(!_loc8_)
                     {
                        continue;
                     }
                     var _loc6_:* = _loc3_;
                     §§push(_loc6_.tempMod);
                     if(_loc8_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc7_:* = §§pop();
                     if(_loc8_)
                     {
                        _loc6_.tempMod = _loc7_;
                     }
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  _loc2_.sendToServerNow = traitWillBeUnlocked(_loc3_);
               }
               if(!_loc9_)
               {
                  _loc2_.professionalId = this._data.profId;
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     addr0119:
                     dispatchEvent(_loc2_);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        this.updateBars();
                     }
                  }
                  §§goto(addr0132);
               }
               §§goto(addr0119);
            }
            addr0132:
            return;
         }
         §§goto(addr0033);
      }
      
      private function handleFire() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event("fireProfessional"));
         }
      }
      
      private function _ProfessionalDetailTabComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 40;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0064:
                     _loc1_.top = -20;
                     if(_loc3_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0098:
                              _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_LocaLabel1_i()];
                              if(!_loc2_)
                              {
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
                              §§goto(addr00bc);
                           }
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0064);
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr00bc);
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "flavorText";
            if(!_loc2_)
            {
               addr002c:
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "flavourText";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0079:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0082:
                                 this.flavourText = _loc1_;
                                 if(!_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr0099);
                           }
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0079);
               }
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr002c);
      }
      
      private function _ProfessionalDetailTabComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.bottom = 45;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_ProfessionalCharacteristicsComponent1_i(),this._ProfessionalDetailTabComponent_Group3_c()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr0054);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_ProfessionalCharacteristicsComponent1_i() : ProfessionalCharacteristicsComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProfessionalCharacteristicsComponent = new ProfessionalCharacteristicsComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr0048);
            }
            §§goto(addr007d);
         }
         addr0048:
         _loc1_.id = "characteristicsComponent";
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     §§goto(addr007d);
                  }
               }
               §§goto(addr008f);
            }
            addr007d:
            this.characteristicsComponent = _loc1_;
            if(_loc2_ || _loc3_)
            {
               addr008f:
               BindingManager.executeBindings(this,"characteristicsComponent",this.characteristicsComponent);
            }
            §§goto(addr009c);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.right = 0;
            if(!_loc3_)
            {
               addr0048:
               _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_BriskImageDynaLib1_c(),this._ProfessionalDetailTabComponent_HGroup2_c()];
               if(!_loc3_)
               {
                  §§goto(addr005e);
               }
               §§goto(addr0072);
            }
            addr005e:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "quadrillepapier_professional";
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr007d:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _ProfessionalDetailTabComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.paddingRight = 20;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.paddingLeft = 16;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_SpecialistSlotComponent1_i(),this._ProfessionalDetailTabComponent_VGroup1_c()];
                           addr0078:
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00a1:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00b5:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00b5);
                     }
                     addr00b9:
                     return _loc1_;
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr00a1);
            }
            §§goto(addr00b5);
         }
         §§goto(addr0078);
      }
      
      private function _ProfessionalDetailTabComponent_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "professionalSlot";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr006c:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr007f);
                     }
                  }
                  addr0075:
                  this.professionalSlot = _loc1_;
                  if(!_loc2_)
                  {
                     addr007f:
                     BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006c);
            }
            §§goto(addr007f);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.gap = 0;
               if(_loc2_)
               {
                  _loc1_.height = 130;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_Group4_c(),this._ProfessionalDetailTabComponent_Group5_c(),this._ProfessionalDetailTabComponent_StatsProgressbar1_i(),this._ProfessionalDetailTabComponent_Group6_c(),this._ProfessionalDetailTabComponent_StatsProgressbar2_i(),this._ProfessionalDetailTabComponent_Group7_c(),this._ProfessionalDetailTabComponent_StatsProgressbar3_i()];
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0097:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00a3:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00a3);
                  }
               }
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _ProfessionalDetailTabComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_HeaderComponentSmall1_c(),this._ProfessionalDetailTabComponent_HGroup3_c()];
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0088);
               }
               addr008c:
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      private function _ProfessionalDetailTabComponent_HeaderComponentSmall1_c() : HeaderComponentSmall
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.label = "";
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0073);
               }
            }
            addr0067:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0073:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _ProfessionalDetailTabComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.paddingLeft = 10;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_LocaLabel2_i(),this._ProfessionalDetailTabComponent_LocaLabel3_i(),this._ProfessionalDetailTabComponent_BriskImageDynaLib2_i()];
                        §§goto(addr006f);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr006f);
            }
            §§goto(addr00a1);
         }
         addr006f:
         if(!(_loc2_ && Boolean(this)))
         {
            addr00a1:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00b5:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "emergencySuccessBarLabel";
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!_loc3_)
                  {
                     _loc1_.id = "statsLabel";
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0098:
                                 this.statsLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"statsLabel",this.statsLabel);
                                 }
                                 §§goto(addr00af);
                              }
                              §§goto(addr00a2);
                           }
                           addr00af:
                           return _loc1_;
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0087);
               }
            }
            §§goto(addr00a2);
         }
         §§goto(addr0087);
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.right = 30;
            if(_loc2_ || _loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc2_)
               {
                  _loc1_.styleName = "schoolBookText";
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr005e);
                  }
               }
               §§goto(addr007d);
            }
         }
         addr005e:
         _loc1_.id = "skillPointsLeftLabel";
         if(!(_loc3_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr007d:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0099);
                  }
                  §§goto(addr00ab);
               }
            }
            addr0099:
            this.skillPointsLeftLabel = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr00ab:
               BindingManager.executeBindings(this,"skillPointsLeftLabel",this.skillPointsLeftLabel);
            }
            §§goto(addr00b8);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "icon_skillpoint";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.right = 4;
                  addr0047:
                  if(_loc2_)
                  {
                     _loc1_.id = "statPointsBadge";
                     if(_loc2_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr007b:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr0099);
                              }
                              §§goto(addr00ab);
                           }
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr007b);
                  }
               }
               addr0099:
               this.statPointsBadge = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr00ab:
                  BindingManager.executeBindings(this,"statPointsBadge",this.statPointsBadge);
               }
               return _loc1_;
            }
            §§goto(addr0067);
         }
         §§goto(addr0047);
      }
      
      private function _ProfessionalDetailTabComponent_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004e);
            }
            §§goto(addr004a);
         }
         addr004e:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_StatsProgressbar1_i() : StatsProgressbar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.enableDividerGroup = true;
               if(_loc2_)
               {
                  _loc1_.enablePlusClick = false;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.id = "attributeOne";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009a:
                                 this.attributeOne = _loc1_;
                                 if(!_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"attributeOne",this.attributeOne);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0089);
               }
            }
         }
         §§goto(addr009a);
      }
      
      private function _ProfessionalDetailTabComponent_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0042:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0046);
            }
            §§goto(addr0042);
         }
         addr0046:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_StatsProgressbar2_i() : StatsProgressbar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.enableDividerGroup = true;
               if(_loc2_)
               {
                  _loc1_.enablePlusClick = false;
                  if(!_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0066);
               }
               addr004e:
               _loc1_.id = "attributeTwo";
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
                           §§goto(addr007b);
                        }
                        §§goto(addr0085);
                     }
                  }
                  addr007b:
                  this.attributeTwo = _loc1_;
                  if(_loc2_)
                  {
                     addr0085:
                     BindingManager.executeBindings(this,"attributeTwo",this.attributeTwo);
                  }
                  §§goto(addr0092);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0085);
         }
         §§goto(addr007b);
      }
      
      private function _ProfessionalDetailTabComponent_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr0045:
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
         §§goto(addr0045);
      }
      
      private function _ProfessionalDetailTabComponent_StatsProgressbar3_i() : StatsProgressbar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.enableDividerGroup = true;
               if(_loc3_ || Boolean(this))
               {
                  addr0055:
                  _loc1_.enablePlusClick = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "attributeThree";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a1:
                                 this.attributeThree = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00ab:
                                    BindingManager.executeBindings(this,"attributeThree",this.attributeThree);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00ab);
            }
            §§goto(addr0055);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group8_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.visible = false;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0039:
               _loc1_.includeInLayout = false;
               if(!(_loc2_ && _loc3_))
               {
                  addr0056:
                  _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_BriskImageDynaLib3_c(),this._ProfessionalDetailTabComponent_LocaLabel4_i()];
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "maxlevelGroup";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00af:
                                 this.maxlevelGroup = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00b9:
                                    BindingManager.executeBindings(this,"maxlevelGroup",this.maxlevelGroup);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00af);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr00af);
            }
            §§goto(addr0056);
         }
         §§goto(addr0039);
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "maxlevel";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr005a);
            }
            §§goto(addr0056);
         }
         addr005a:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.left = 0;
                     if(_loc3_)
                     {
                        _loc1_.styleName = "progressBarLabel";
                        §§goto(addr0061);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr00e8);
            }
            §§goto(addr007f);
         }
         addr0061:
         if(_loc3_ || _loc2_)
         {
            addr007f:
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.setStyle("verticalAlign","middle");
               if(!_loc2_)
               {
                  §§goto(addr00a1);
               }
               §§goto(addr00de);
            }
            §§goto(addr00e8);
         }
         addr00a1:
         _loc1_.id = "maxlevelLabel";
         if(!(_loc2_ && Boolean(this)))
         {
            addr00b4:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr00de:
                     this.maxlevelLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr00e8:
                        BindingManager.executeBindings(this,"maxlevelLabel",this.maxlevelLabel);
                     }
                  }
                  §§goto(addr00f5);
               }
               §§goto(addr00e8);
            }
            §§goto(addr00de);
         }
         addr00f5:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group9_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 70;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.top = 24;
                  if(_loc3_)
                  {
                     addr0053:
                     _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_StickyNoteComponent1_c(),this._ProfessionalDetailTabComponent_VGroup2_c()];
                     if(!_loc2_)
                     {
                        _loc1_.id = "levelbarGroup";
                        if(!_loc2_)
                        {
                           addr0074:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr0095:
                                    this.levelbarGroup = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"levelbarGroup",this.levelbarGroup);
                                    }
                                 }
                                 §§goto(addr00b4);
                              }
                           }
                           §§goto(addr0095);
                        }
                        addr00b4:
                        return _loc1_;
                     }
                     §§goto(addr0074);
                  }
               }
            }
            §§goto(addr00a7);
         }
         §§goto(addr0053);
      }
      
      private function _ProfessionalDetailTabComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.tapeRight = true;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.tapeLeft = true;
               if(!_loc2_)
               {
                  _loc1_.styleName = "blue";
                  if(_loc3_ || _loc3_)
                  {
                     addr005d:
                     _loc1_.percentWidth = 100;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr005d);
            }
            addr006f:
            _loc1_.height = 80;
            if(!_loc2_)
            {
               _loc1_.bottom = -6;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.right = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr00aa:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00b6:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00b6);
               }
            }
            §§goto(addr00ba);
         }
         addr00ba:
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.paddingLeft = 25;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.paddingRight = 25;
                  addr0047:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.paddingTop = 10;
                     if(_loc3_)
                     {
                        _loc1_.paddingBottom = 10;
                        if(_loc3_)
                        {
                           addr007b:
                           _loc1_.gap = 2;
                           if(!_loc2_)
                           {
                              addr0090:
                              _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_Group10_c(),this._ProfessionalDetailTabComponent_Group11_c()];
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00ba);
                           }
                           addr00ae:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00ba:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr00ae);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr0047);
      }
      
      private function _ProfessionalDetailTabComponent_Group10_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.right = 34;
            if(_loc3_ || _loc3_)
            {
               _loc1_.left = 10;
               if(_loc3_)
               {
                  §§goto(addr003c);
               }
            }
            §§goto(addr005b);
         }
         addr003c:
         _loc1_.percentWidth = 100;
         if(_loc3_ || Boolean(this))
         {
            addr005b:
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_HGroup4_c(),this._ProfessionalDetailTabComponent_LocaLabel5_i()];
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_BriskImageDynaLib4_c(),this._ProfessionalDetailTabComponent_BriskImageDynaLib5_c(),this._ProfessionalDetailTabComponent_BriskImageDynaLib6_c()];
                     if(_loc3_ || _loc3_)
                     {
                        addr0096:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr00aa:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0096);
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr00aa);
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               §§goto(addr0037);
            }
            §§goto(addr0056);
         }
         addr0037:
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         if(_loc2_ || Boolean(_loc1_))
         {
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0056:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0072:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0072);
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_)
            {
               addr004c:
               _loc1_.dynaBmpSourceName = "bluemarker_small_right";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
            addr006f:
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0044);
               }
               §§goto(addr009f);
            }
            addr0044:
            _loc1_.left = 6;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.styleName = "departmentSecurityLabel";
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0074);
               }
               §§goto(addr0087);
            }
            addr0074:
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_ || _loc2_)
            {
               addr0087:
               _loc1_.id = "labelDisplay";
               if(!_loc3_)
               {
                  addr009f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00ab:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr00b4);
                        }
                     }
                     §§goto(addr00be);
                  }
                  addr00b4:
                  this.labelDisplay = _loc1_;
                  if(_loc2_)
                  {
                     addr00be:
                     BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00ab);
            }
            addr00cb:
            return _loc1_;
         }
         §§goto(addr00ab);
      }
      
      private function _ProfessionalDetailTabComponent_Group11_c() : Group
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
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_VGroup3_c(),this._ProfessionalDetailTabComponent_BriskImageDynaLib7_c()];
                  addr0041:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0080);
         }
         §§goto(addr0041);
      }
      
      private function _ProfessionalDetailTabComponent_VGroup3_c() : VGroup
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
               _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_Group12_c()];
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr004d);
               }
            }
            §§goto(addr0059);
         }
         addr004d:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0059:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group12_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_ProgressBarComponent1_i()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0049:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _ProfessionalDetailTabComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.label = "";
            if(!_loc2_)
            {
               _loc1_.dividerCount = 5;
               if(_loc3_)
               {
                  _loc1_.width = 670;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.progress = 0;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr007f);
               }
               addr0074:
               _loc1_.id = "levelProgressBarComponent";
               if(_loc3_)
               {
                  addr007f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00af:
                           this.levelProgressBarComponent = _loc1_;
                           if(_loc3_)
                           {
                              addr00b9:
                              BindingManager.executeBindings(this,"levelProgressBarComponent",this.levelProgressBarComponent);
                           }
                        }
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00af);
               }
               addr00c6:
               return _loc1_;
            }
         }
         §§goto(addr00b9);
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "upgrade_icon";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.left = -5;
                  if(!_loc3_)
                  {
                     addr006e:
                     _loc1_.top = -5;
                     if(_loc2_)
                     {
                        addr0078:
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
                  addr0088:
                  return _loc1_;
               }
            }
            §§goto(addr0078);
         }
         §§goto(addr006e);
      }
      
      private function _ProfessionalDetailTabComponent_Group13_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.bottom = 6;
            if(_loc3_ || _loc3_)
            {
               addr0041:
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_HGroup5_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr007d);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _ProfessionalDetailTabComponent_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0051:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_MultistateButton1_i()];
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0081);
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr0051);
         }
         addr0081:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr008d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "abort";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = 205;
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.imageNameLeft = "button_icon_no";
                     if(!_loc3_)
                     {
                        addr0068:
                        _loc1_.libNameLeft = "gui_popups_FriendBook";
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.addEventListener("click",this.__fireButton_click);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.id = "fireButton";
                              if(_loc2_)
                              {
                                 addr009f:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00b7:
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          addr00c0:
                                          this.fireButton = _loc1_;
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00d2:
                                             BindingManager.executeBindings(this,"fireButton",this.fireButton);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00d2);
                           }
                        }
                        §§goto(addr009f);
                     }
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr0068);
            }
            §§goto(addr00d2);
         }
         §§goto(addr00b7);
      }
      
      public function __fireButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleFire();
         }
      }
      
      private function _ProfessionalDetailTabComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§pop()[0] = new Binding(this,function():BriskDynaVo
                     {
                        return new BriskDynaVo("gui_popups_emergencyBook","infrabar_divider");
                     },null,"levelProgressBarComponent.dividerAsset");
                     addr0076:
                     addr0074:
                     return result;
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0074);
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeOne() : StatsProgressbar
      {
         return this._1016580566attributeOne;
      }
      
      public function set attributeOne(param1:StatsProgressbar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1016580566attributeOne;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1016580566attributeOne = param1;
                  if(!_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeOne",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0052);
            }
         }
         addr0079:
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeThree() : StatsProgressbar
      {
         return this._1971893150attributeThree;
      }
      
      public function set attributeThree(param1:StatsProgressbar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1971893150attributeThree;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003f:
                  this._1971893150attributeThree = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeThree",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeTwo() : StatsProgressbar
      {
         return this._1016575472attributeTwo;
      }
      
      public function set attributeTwo(param1:StatsProgressbar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1016575472attributeTwo;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1016575472attributeTwo = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeTwo",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0062);
            }
            addr0080:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get characteristicsComponent() : ProfessionalCharacteristicsComponent
      {
         return this._719353435characteristicsComponent;
      }
      
      public function set characteristicsComponent(param1:ProfessionalCharacteristicsComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._719353435characteristicsComponent;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._719353435characteristicsComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characteristicsComponent",_loc2_,param1));
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
      public function get fireButton() : MultistateButton
      {
         return this._1112078072fireButton;
      }
      
      public function set fireButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1112078072fireButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1112078072fireButton = param1;
                  addr0042:
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireButton",_loc2_,param1));
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
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004d);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0042:
                  this._1184053038labelDisplay = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0060);
            }
            addr0087:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelProgressBarComponent() : ProgressBarComponent
      {
         return this._1146996379levelProgressBarComponent;
      }
      
      public function set levelProgressBarComponent(param1:ProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1146996379levelProgressBarComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1146996379levelProgressBarComponent = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelProgressBarComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelbarGroup() : Group
      {
         return this._843713104levelbarGroup;
      }
      
      public function set levelbarGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._843713104levelbarGroup;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._843713104levelbarGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelbarGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get maxlevelGroup() : Group
      {
         return this._1314010559maxlevelGroup;
      }
      
      public function set maxlevelGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1314010559maxlevelGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1314010559maxlevelGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxlevelGroup",_loc2_,param1));
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
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get maxlevelLabel() : LocaLabel
      {
         return this._1318108724maxlevelLabel;
      }
      
      public function set maxlevelLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1318108724maxlevelLabel;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1318108724maxlevelLabel = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxlevelLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
         }
         addr0089:
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1795780411professionalSlot = param1;
                  addr0048:
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0078);
               }
               addr0068:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0048);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._227692281skillPointsLeftLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointsLeftLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0063);
            }
            addr008a:
            return;
         }
         §§goto(addr007b);
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
               if(_loc3_ || Boolean(param1))
               {
                  this._951519628statPointsBadge = param1;
                  if(!_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statPointsBadge",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
         }
         addr007f:
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0057:
                  this._155112853statsLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
   }
}

