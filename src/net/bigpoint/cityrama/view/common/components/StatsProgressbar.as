package net.bigpoint.cityrama.view.common.components
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.StatsProgressBarTraitThresholdsVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class StatsProgressbar extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1232143642dividerGroup:HGroup;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _563971436plusButton:MultistateButton;
      
      private var _1131540166progressbar:HGroup;
      
      private var _2131975515traitHGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Number = 1;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _creationCompleted:Boolean = false;
      
      private var _type:String;
      
      private var _traitThresholds:Vector.<StatsProgressBarTraitThresholdsVo>;
      
      private var _thresholdsChanged:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function StatsProgressbar()
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc2_)
                  {
                     addr004f:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 addr0083:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || Boolean(this))
                                 {
                                    super();
                                    if(_loc4_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          addr00ba:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00c1:
                                             §§pop().§§slot[1] = this._StatsProgressbar_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      addr00eb:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr010b:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_StatsProgressbarWatcherSetupUtil");
                                                                     addr0113:
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0133:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr013a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              addr0158:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return StatsProgressbar[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0175:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr01a3:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01ca:
                                                                                       this.mxmlContent = [this._StatsProgressbar_HGroup1_c()];
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          addr01e2:
                                                                                          this.addEventListener("creationComplete",this.___StatsProgressbar_Group1_creationComplete);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr01fe:
                                                                                             i = 0;
                                                                                             addr01fc:
                                                                                          }
                                                                                       }
                                                                                       var _temp_14:*;
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
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(var _temp_14:* = §§pop(), §§pop().§§slot[4] = _temp_14, _loc4_);
                                                                                       
                                                                                       return;
                                                                                       addr0262:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01e2);
                                                                              }
                                                                              §§goto(addr01ca);
                                                                           }
                                                                           §§goto(addr0262);
                                                                        }
                                                                        §§goto(addr01fe);
                                                                     }
                                                                     §§goto(addr01e2);
                                                                  }
                                                                  §§goto(addr01fe);
                                                               }
                                                               §§goto(addr01ca);
                                                            }
                                                            §§goto(addr0158);
                                                         }
                                                         §§goto(addr010b);
                                                      }
                                                      §§goto(addr013a);
                                                   }
                                                   §§goto(addr01ca);
                                                }
                                                §§goto(addr01fe);
                                             }
                                             §§goto(addr0158);
                                          }
                                          §§goto(addr013a);
                                       }
                                       §§goto(addr01fc);
                                    }
                                    §§goto(addr0133);
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr01a3);
                           }
                           §§goto(addr00eb);
                        }
                        §§goto(addr01e2);
                     }
                     §§goto(addr0175);
                  }
                  §§goto(addr0113);
               }
               §§goto(addr0083);
            }
            §§goto(addr004f);
         }
         §§goto(addr00c1);
      }
      
      private static function getImageByTraitTier(param1:uint) : BriskDynaVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(_loc3_)
         {
            §§push(StatsProgressBarTraitThresholdsVo.TIER_BRONZE);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr0097:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00f0:
                        §§push(2);
                        if(_loc3_)
                        {
                        }
                     }
                     addr0107:
                     switch(§§pop())
                     {
                        case 0:
                           return new BriskDynaVo("gui_popups_schoolBook","bar_medal_bronze");
                        case 1:
                           return new BriskDynaVo("gui_popups_schoolBook","bar_medal_gold");
                        case 2:
                           return new BriskDynaVo("gui_popups_schoolBook","bar_medal_silver");
                        default:
                           return null;
                     }
                  }
                  else
                  {
                     §§push(StatsProgressBarTraitThresholdsVo.TIER_GOLD);
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           addr00b4:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || StatsProgressbar)
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00f0);
                              }
                           }
                           else
                           {
                              addr00ec:
                              addr00eb:
                              if(StatsProgressBarTraitThresholdsVo.TIER_SILVER === _loc2_)
                              {
                                 §§goto(addr00f0);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr00b4);
            }
            §§goto(addr00eb);
         }
         §§goto(addr0097);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            StatsProgressbar._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return;
                  }
               }
               addr0055:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0055);
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
      
      public function set enablePlusClick(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.plusButton.visible = param1;
         }
      }
      
      public function set enableDividerGroup(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.dividerGroup.visible = param1;
            if(!_loc3_)
            {
               addr002b:
               this.dividerGroup.includeInLayout = param1;
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     this._dataIsDirty = true;
                     if(!_loc2_)
                     {
                        addr0053:
                        invalidateProperties();
                     }
                     §§goto(addr0058);
                  }
                  §§goto(addr0053);
               }
            }
            addr0058:
            return;
         }
         §§goto(addr0053);
      }
      
      public function get progress() : Number
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:StatsProgressBarTraitThresholdsVo = null;
         var _loc2_:BriskImageDynaLib = null;
         if(_loc6_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc6_)
            {
               §§push(this._dataIsDirty);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(this))
                     {
                        addr005a:
                        this.progressbar.percentWidth = this._data * 100;
                        if(!_loc5_)
                        {
                           this.progressbar.visible = this.progressbar.percentWidth >= 1;
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              addr008a:
                              this._dataIsDirty = false;
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 addr00a2:
                                 if(this._thresholdsChanged)
                                 {
                                    if(!_loc5_)
                                    {
                                       this.traitHGroup.includeInLayout = this.traitHGroup.visible = this._traitThresholds.length != 0;
                                       addr00ac:
                                    }
                                    do
                                    {
                                       if(this.traitHGroup.numElements <= 0)
                                       {
                                          if(!_loc5_)
                                          {
                                             var _loc3_:int = 0;
                                             if(_loc6_)
                                             {
                                                for each(_loc1_ in this._traitThresholds)
                                                {
                                                   _loc2_ = new BriskImageDynaLib();
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      _loc2_.briskDynaVo = getImageByTraitTier(_loc1_.tier);
                                                      if(!(_loc5_ && Boolean(_loc1_)))
                                                      {
                                                         _loc2_.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook",_loc1_.localeId);
                                                         if(_loc5_ && Boolean(_loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc2_);
                                                         §§push(this.traitHGroup.width * _loc1_.thresholdScalar);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() - 13);
                                                         }
                                                         §§pop().left = §§pop();
                                                         if(_loc5_ && Boolean(_loc2_))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   this.traitHGroup.addElement(_loc2_);
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       this.traitHGroup.removeElementAt(0);
                                    }
                                    while(!_loc5_);
                                    
                                    addr00ea:
                                 }
                                 §§goto(addr01b2);
                              }
                              §§goto(addr00ac);
                           }
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr008a);
                  }
                  addr01b2:
                  return;
               }
               §§goto(addr00a2);
            }
            §§goto(addr00ea);
         }
         §§goto(addr005a);
      }
      
      private function handleCreationComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.toolTip = LocaUtils.getString("rcl.education.skills",getStyle("tooltipName"));
         }
      }
      
      protected function handlePlusClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_USE_STAT_POINT,true));
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._type = param1;
         }
      }
      
      public function set traitThresholds(param1:Vector.<StatsProgressBarTraitThresholdsVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._traitThresholds = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               this._thresholdsChanged = true;
            }
         }
      }
      
      private function _StatsProgressbar_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0069:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.gap = 5;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._StatsProgressbar_Group2_c(),this._StatsProgressbar_Group3_c(),this._StatsProgressbar_MultistateButton1_i()];
                           addr0085:
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00b4);
                           }
                        }
                        §§goto(addr00c0);
                     }
                  }
               }
               addr00b4:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00c0:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0085);
         }
         §§goto(addr0069);
      }
      
      private function _StatsProgressbar_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 30;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._StatsProgressbar_BriskImageDynaLib1_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0072);
      }
      
      private function _StatsProgressbar_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "icon";
                  if(_loc3_ || _loc3_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0096:
                              this.icon = _loc1_;
                              if(_loc3_)
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"icon",this.icon);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0065);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr00a0);
      }
      
      private function _StatsProgressbar_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._StatsProgressbar_HGroup2_c(),this._StatsProgressbar_Group4_c(),this._StatsProgressbar_HGroup4_i(),this._StatsProgressbar_Group10_i()];
                  if(_loc2_)
                  {
                     addr007b:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0087:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007b);
            }
         }
         §§goto(addr0087);
      }
      
      private function _StatsProgressbar_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.gap = 0;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._StatsProgressbar_BriskImageDynaLib2_c(),this._StatsProgressbar_BriskImageDynaLib3_c(),this._StatsProgressbar_BriskImageDynaLib4_c()];
                     addr0050:
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0093:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr0093);
                  }
                  addr0097:
                  return _loc1_;
               }
               §§goto(addr0050);
            }
         }
         §§goto(addr0093);
      }
      
      private function _StatsProgressbar_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_bg_left";
               if(_loc2_)
               {
                  addr0045:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0055);
            }
            §§goto(addr0045);
         }
         addr0055:
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_emergencyBook";
               if(!_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "mini_infrabar_bg_middle";
                  §§goto(addr0042);
               }
               §§goto(addr0063);
            }
         }
         addr0042:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0063:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_bg_right";
               if(!_loc2_)
               {
                  §§goto(addr005c);
               }
            }
            §§goto(addr0070);
         }
         addr005c:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr0070:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.left = 3;
            if(_loc3_)
            {
               _loc1_.right = 3;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0081);
               }
               addr0067:
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  addr0071:
                  _loc1_.mxmlContent = [this._StatsProgressbar_HGroup3_i()];
                  if(_loc3_)
                  {
                     addr0081:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0071);
         }
         §§goto(addr0081);
      }
      
      private function _StatsProgressbar_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.gap = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc3_)
                  {
                     addr0060:
                     _loc1_.mxmlContent = [this._StatsProgressbar_BriskImageDynaLib5_c(),this._StatsProgressbar_BriskImageDynaLib6_c(),this._StatsProgressbar_BriskImageDynaLib7_c()];
                     if(_loc2_)
                     {
                        _loc1_.id = "progressbar";
                        if(_loc2_)
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0093:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00b0:
                                    this.progressbar = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00c2:
                                       BindingManager.executeBindings(this,"progressbar",this.progressbar);
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                           }
                           §§goto(addr00b0);
                        }
                        addr00cf:
                        return _loc1_;
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0060);
            }
         }
         §§goto(addr00c2);
      }
      
      private function _StatsProgressbar_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_left";
               if(!(_loc2_ && _loc2_))
               {
                  addr004b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0057:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr0057);
      }
      
      private function _StatsProgressbar_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaLibName = "gui_popups_emergencyBook";
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr0060);
               }
               §§goto(addr0077);
            }
            addr0060:
            _loc1_.dynaBmpSourceName = "mini_infrabar_orange_middle";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0077:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr007b);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_right";
               if(!_loc3_)
               {
                  addr0047:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0053:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0047);
         }
         §§goto(addr0053);
      }
      
      private function _StatsProgressbar_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.gap = 0;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.paddingLeft = 3;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.paddingRight = 3;
                        if(_loc3_)
                        {
                           _loc1_.left = 0;
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.verticalCenter = 0;
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.mxmlContent = [this._StatsProgressbar_Group5_c(),this._StatsProgressbar_BriskImageDynaLib8_c(),this._StatsProgressbar_Group6_c(),this._StatsProgressbar_BriskImageDynaLib9_c(),this._StatsProgressbar_Group7_c(),this._StatsProgressbar_BriskImageDynaLib10_c(),this._StatsProgressbar_Group8_c(),this._StatsProgressbar_BriskImageDynaLib11_c(),this._StatsProgressbar_Group9_c()];
                                 if(!_loc2_)
                                 {
                                    addr00df:
                                    _loc1_.id = "dividerGroup";
                                    if(_loc3_)
                                    {
                                       addr00ea:
                                       if(!_loc1_.document)
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             _loc1_.document = this;
                                             if(!(_loc2_ && Boolean(_loc1_)))
                                             {
                                                §§goto(addr011b);
                                             }
                                             §§goto(addr0125);
                                          }
                                       }
                                       addr011b:
                                       this.dividerGroup = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr0125:
                                          BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
                                       }
                                       §§goto(addr0132);
                                    }
                                    §§goto(addr0125);
                                 }
                                 addr0132:
                                 return _loc1_;
                              }
                              §§goto(addr011b);
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr00df);
                  }
               }
               §§goto(addr011b);
            }
            §§goto(addr00df);
         }
         §§goto(addr011b);
      }
      
      private function _StatsProgressbar_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0040:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _StatsProgressbar_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0055:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _StatsProgressbar_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006c);
               }
            }
            §§goto(addr0068);
         }
         addr006c:
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0050:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _StatsProgressbar_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0051:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0055);
               }
               §§goto(addr0051);
            }
            addr0055:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _StatsProgressbar_Group8_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0036);
            }
            §§goto(addr0042);
         }
         addr0036:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0042:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr004a:
               _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
               if(!_loc2_)
               {
                  §§goto(addr0055);
               }
               §§goto(addr0069);
            }
            addr0055:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0069:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _StatsProgressbar_Group9_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr003c);
            }
            §§goto(addr0048);
         }
         addr003c:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0048:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group10_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 270;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = -3;
               if(!_loc3_)
               {
                  _loc1_.includeInLayout = false;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(!_loc3_)
                     {
                        _loc1_.id = "traitHGroup";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0084:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr008d:
                                    this.traitHGroup = _loc1_;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr009f:
                                       BindingManager.executeBindings(this,"traitHGroup",this.traitHGroup);
                                    }
                                 }
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr0084);
            }
            §§goto(addr009f);
         }
         addr00ac:
         return _loc1_;
      }
      
      private function _StatsProgressbar_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.useSmallSkin = true;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 30;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.imageNameLeft = "button_icon_positive";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.libNameLeft = "gui_popups_shopBook";
                     if(_loc3_)
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr009f);
               }
               addr0072:
               _loc1_.visible = false;
               if(_loc3_)
               {
                  _loc1_.addEventListener("click",this.__plusButton_click);
                  if(_loc3_ || _loc2_)
                  {
                     addr0094:
                     _loc1_.id = "plusButton";
                     if(_loc3_)
                     {
                        addr009f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr00ab:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00c7:
                                 this.plusButton = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    BindingManager.executeBindings(this,"plusButton",this.plusButton);
                                 }
                              }
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr00ab);
                  }
               }
               addr00e6:
               return _loc1_;
            }
            §§goto(addr0094);
         }
         §§goto(addr00ab);
      }
      
      public function __plusButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handlePlusClick(param1);
         }
      }
      
      public function ___StatsProgressbar_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _StatsProgressbar_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("dynaLibName");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"icon.dynaLibName");
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00a2);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00a9);
               }
               addr00a2:
               §§push(§§pop().§§slot[1]);
               if(!_loc2_)
               {
                  addr00ab:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("imageName");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"icon.dynaBmpSourceName");
                  addr00be:
                  addr00bc:
                  §§push(result);
                  addr00a9:
               }
               return §§pop();
            }
            §§goto(addr00bc);
         }
         §§goto(addr00be);
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerGroup() : HGroup
      {
         return this._1232143642dividerGroup;
      }
      
      public function set dividerGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1232143642dividerGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1232143642dividerGroup = param1;
                  if(_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005c);
            }
            addr0082:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._3226745icon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get plusButton() : MultistateButton
      {
         return this._563971436plusButton;
      }
      
      public function set plusButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._563971436plusButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._563971436plusButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressbar() : HGroup
      {
         return this._1131540166progressbar;
      }
      
      public function set progressbar(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131540166progressbar;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1131540166progressbar = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007f);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr007f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressbar",_loc2_,param1));
                  }
               }
               §§goto(addr008e);
            }
            addr008e:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get traitHGroup() : Group
      {
         return this._2131975515traitHGroup;
      }
      
      public function set traitHGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2131975515traitHGroup;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2131975515traitHGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traitHGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0090);
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0090:
      }
   }
}

