package net.bigpoint.cityrama.view.settingsbar.ui.components
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.common.skins.DebugBoxSkin;
   import org.puremvc.as3.patterns.facade.Facade;
   import spark.components.Button;
   import spark.components.ButtonBar;
   import spark.components.DropDownList;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.SkinnableContainer;
   import spark.components.TextInput;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   use namespace mx_internal;
   
   public class SettingsBarView extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1641884153academicsCheatButton:Button;
      
      private var _356425693academicsCheatInput:TextInput;
      
      private var _425996988categoryList:DropDownList;
      
      private var _2057884308cheatGroup:SkinnableContainer;
      
      private var _287007161cleanStreets:Button;
      
      private var _385593099dataGroup:SkinnableContainer;
      
      private var _561770842devDestroyEnableButton:ToggleButton;
      
      private var _1629013393emergency:Button;
      
      private var _1270778695emergencyInput:TextInput;
      
      private var _608211762enableFullLog:Button;
      
      private var _133799878epCheatButton:Button;
      
      private var _694672834epCheatInput:TextInput;
      
      private var _32365100eventtest:Button;
      
      private var _1736110151featureTextInput:TextInput;
      
      private var _1167007887featureUpdateButton:Button;
      
      private var _1895727015fillWithStreets:Button;
      
      private var _957897400generateBoulder:Button;
      
      private var _1354855362goodGroup:SkinnableContainer;
      
      private var _1656150031goodsCountInput:TextInput;
      
      private var _1394352404goodsList:DropDownList;
      
      private var _285626141grantPermissionButton:Button;
      
      private var _1856904262grantgoodsnButton:Button;
      
      private var _1664248505idlabel:TextInput;
      
      private var _1759683197idlabelShowGround:TextInput;
      
      private var _1196959496kaxInput:TextInput;
      
      private var _929947276kaxtest:Button;
      
      private var _70001746layerGroup:SkinnableContainer;
      
      private var _108771229lvlCheatButton:Button;
      
      private var _135803783lvlCheatInput:TextInput;
      
      private var _1896433055managePlayfield:SkinnableContainer;
      
      private var _1421629188manualRender:Button;
      
      private var _506016843matrixXCoords:Label;
      
      private var _381486838matrixYCoords:Label;
      
      private var _510102126moodCheatButton:Button;
      
      private var _299801870moodCheatInput:TextInput;
      
      private var _1844723050newData:Button;
      
      private var _1833198495permissionsCountInput:TextInput;
      
      private var _1803764827permissionsGroup:SkinnableContainer;
      
      private var _1604241598permissionsList:DropDownList;
      
      private var _1694490643playfieldBar:ButtonBar;
      
      private var _1088499616playfiledLabel:Label;
      
      private var _933734341ppCheatButton:Button;
      
      private var _2114582743ppCheatInput:TextInput;
      
      private var _1649912422pwrCheatButton:Button;
      
      private var _922860642pwrCheatInput:TextInput;
      
      private var _553986749questGroup:SkinnableContainer;
      
      private var _1331147020rcCheatButton:Button;
      
      private var _36687928rcCheatInput:TextInput;
      
      private var _455351204renderToggleButton:ToggleButton;
      
      private var _489628359ricCheatButton:Button;
      
      private var _286636829ricCheatInput:TextInput;
      
      private var _1926384965screen1:Button;
      
      private var _411608181screen10:Button;
      
      private var _411608180screen11:Button;
      
      private var _411608179screen12:Button;
      
      private var _1926384966screen2:Button;
      
      private var _1926384967screen3:Button;
      
      private var _1926384968screen4:Button;
      
      private var _1926384969screen5:Button;
      
      private var _1926384970screen6:Button;
      
      private var _1926384971screen7:Button;
      
      private var _1926384972screen8:Button;
      
      private var _1926384973screen9:Button;
      
      private var _1929547818showCheat:ToggleButton;
      
      private var _339314617showData:ToggleButton;
      
      private var _1271037176showGoodlist:ToggleButton;
      
      private var _1471963074showGroundType:ToggleButton;
      
      private var _903145224showId:ToggleButton;
      
      private var _1921425324showLayer:ToggleButton;
      
      private var _1076470956showPermission:ToggleButton;
      
      private var _1916230683showQuest:ToggleButton;
      
      private var _1575623861showSwitchPlayfield:ToggleButton;
      
      private var _1448052289showUpsellOfferLayer:Button;
      
      private var _815758713showWorldMap:Button;
      
      private var _1981120216shutdownButton:Button;
      
      private var _1028503875textinput:TextInput;
      
      private var _656707557toggleSpool:ToggleButton;
      
      private var _188490736townhallharvestButton:Button;
      
      private var _724164158traceProf:Button;
      
      private var _963459803tuttest:Button;
      
      private var _2034630040upsellUpdateButton:Button;
      
      private var _1790208248vcCheatButton:Button;
      
      private var _479642948vcCheatInput:TextInput;
      
      private var _1453368555worCheatButton:Button;
      
      private var _2131345137worCheatInput:TextInput;
      
      private var _1413489715xpCheatButton:Button;
      
      private var _1147722801xpCheatInput:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsBarView()
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
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr003b:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || Boolean(this))
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._SettingsBarView_bindingsSetup();
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr00c6:
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00d5:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      addr00e0:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr00e7:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr00f9:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr011e:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_settingsbar_ui_components_SettingsBarViewWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0145:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr015b:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return SettingsBarView[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr01a5:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01cc:
                                                                                       this.includeInLayout = false;
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          addr01dd:
                                                                                          this.layout = this._SettingsBarView_VerticalLayout1_c();
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             addr01f5:
                                                                                             this.mxmlContent = [this._SettingsBarView_HGroup1_c()];
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0207:
                                                                                                i = 0;
                                                                                                addr0205:
                                                                                             }
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
                                                                                                   if(_loc3_ && _loc1_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc3_ && _loc2_))
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
                                                                                                      if(_loc4_ || _loc3_)
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
                                                                                       while(var _temp_14:* = §§pop(), §§pop().§§slot[4] = _temp_14, !_loc3_);
                                                                                       
                                                                                       return;
                                                                                       addr027d:
                                                                                    }
                                                                                    §§goto(addr01f5);
                                                                                 }
                                                                                 §§goto(addr01dd);
                                                                              }
                                                                              §§goto(addr01a5);
                                                                           }
                                                                           §§goto(addr0205);
                                                                        }
                                                                        §§goto(addr0207);
                                                                     }
                                                                     §§goto(addr01dd);
                                                                  }
                                                                  §§goto(addr0145);
                                                               }
                                                               §§goto(addr01a5);
                                                            }
                                                            §§goto(addr015b);
                                                         }
                                                         §§goto(addr027d);
                                                      }
                                                      §§goto(addr011e);
                                                   }
                                                   §§goto(addr015b);
                                                }
                                                §§goto(addr011e);
                                             }
                                             §§goto(addr00e0);
                                          }
                                          §§goto(addr00d5);
                                       }
                                       §§goto(addr0205);
                                    }
                                 }
                                 §§goto(addr01a5);
                              }
                              §§goto(addr01f5);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00f9);
                  }
                  §§goto(addr00e7);
               }
               §§goto(addr01cc);
            }
            §§goto(addr003b);
         }
         §§goto(addr011e);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            SettingsBarView._watcherSetupUtil = param1;
         }
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
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               addr004b:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr004b);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _SettingsBarView_VerticalLayout1_c() : VerticalLayout
      {
         return new VerticalLayout();
      }
      
      private function _SettingsBarView_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_SkinnableContainer1_i(),this._SettingsBarView_SkinnableContainer2_i(),this._SettingsBarView_SkinnableContainer3_i(),this._SettingsBarView_SkinnableContainer4_i(),this._SettingsBarView_SkinnableContainer5_i(),this._SettingsBarView_SkinnableContainer6_i(),this._SettingsBarView_SkinnableContainer7_i(),this._SettingsBarView_SkinnableContainer8_c()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr008f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr008f);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _SettingsBarView_SkinnableContainer1_i() : SkinnableContainer
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.visible = false;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.includeInLayout = false;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array3_c);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.setStyle("skinClass",DebugBoxSkin);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr008a);
                     }
                     §§goto(addr00e0);
                  }
               }
               addr008a:
               _loc1_.id = "questGroup";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00b1:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00ce:
                           this.questGroup = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00e0:
                              BindingManager.executeBindings(this,"questGroup",this.questGroup);
                           }
                        }
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00ed);
            }
            addr00ed:
            return _loc1_;
         }
         §§goto(addr00b1);
      }
      
      private function _SettingsBarView_Array3_c() : Array
      {
         return [this._SettingsBarView_HGroup2_c()];
      }
      
      private function _SettingsBarView_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_VGroup1_c()];
            if(!(_loc3_ && _loc3_))
            {
               addr0044:
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
         §§goto(addr0044);
      }
      
      private function _SettingsBarView_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_HGroup3_c()];
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
      
      private function _SettingsBarView_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button1_i(),this._SettingsBarView_Button2_i(),this._SettingsBarView_TextInput1_i()];
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr005f);
            }
            §§goto(addr005b);
         }
         addr005f:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button1_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.label = "quest";
            if(!(_loc3_ && _loc3_))
            {
               addr0033:
               _loc1_.id = "tuttest";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr005d:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr008c);
                     }
                  }
                  addr007a:
                  this.tuttest = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr008c:
                     BindingManager.executeBindings(this,"tuttest",this.tuttest);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr005d);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _SettingsBarView_Button2_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || _loc3_)
         {
            _loc1_.label = "event";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.id = "eventtest";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007d:
                           this.eventtest = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"eventtest",this.eventtest);
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr007d);
               }
            }
            §§goto(addr008f);
         }
         §§goto(addr007d);
      }
      
      private function _SettingsBarView_TextInput1_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(_loc3_)
         {
            _loc1_.restrict = "1234567890";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0039:
               _loc1_.width = 30;
               if(_loc3_)
               {
                  _loc1_.id = "textinput";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0082:
                              this.textinput = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0094:
                                 BindingManager.executeBindings(this,"textinput",this.textinput);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr0094);
                        }
                        addr00a1:
                        return _loc1_;
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0082);
         }
         §§goto(addr0039);
      }
      
      private function _SettingsBarView_SkinnableContainer2_i() : SkinnableContainer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.includeInLayout = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array7_c);
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("skinClass",DebugBoxSkin);
                     if(!_loc2_)
                     {
                        addr0078:
                        _loc1_.id = "managePlayfield";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008b:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00b2:
                                    this.managePlayfield = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00c4:
                                       BindingManager.executeBindings(this,"managePlayfield",this.managePlayfield);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr00b2);
            }
            §§goto(addr0078);
         }
         §§goto(addr00c4);
      }
      
      private function _SettingsBarView_Array7_c() : Array
      {
         return [this._SettingsBarView_VGroup2_c()];
      }
      
      private function _SettingsBarView_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_HGroup4_c(),this._SettingsBarView_HGroup5_c(),this._SettingsBarView_VGroup3_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button3_i(),this._SettingsBarView_Button4_i(),this._SettingsBarView_Button5_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr005e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0062);
            }
            §§goto(addr005e);
         }
         addr0062:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button3_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!_loc2_)
         {
            _loc1_.label = "fillWithStreets";
            if(!_loc2_)
            {
               _loc1_.setStyle("color",16737894);
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr004d);
               }
            }
            §§goto(addr0093);
         }
         addr004d:
         _loc1_.id = "fillWithStreets";
         if(!(_loc2_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr0081);
                  }
                  §§goto(addr0093);
               }
            }
         }
         addr0081:
         this.fillWithStreets = _loc1_;
         if(!(_loc2_ && Boolean(this)))
         {
            addr0093:
            BindingManager.executeBindings(this,"fillWithStreets",this.fillWithStreets);
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button4_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || _loc2_)
         {
            _loc1_.label = "kill streets";
            if(_loc3_)
            {
               _loc1_.id = "cleanStreets";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
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
                  this.cleanStreets = _loc1_;
                  if(_loc3_)
                  {
                     addr007f:
                     BindingManager.executeBindings(this,"cleanStreets",this.cleanStreets);
                  }
                  return _loc1_;
               }
               §§goto(addr006c);
            }
            §§goto(addr007f);
         }
         §§goto(addr006c);
      }
      
      private function _SettingsBarView_Button5_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!_loc3_)
         {
            _loc1_.label = "get Boulder";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "generateBoulder";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0052:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr0085);
                     }
                  }
               }
               addr007b:
               this.generateBoulder = _loc1_;
               if(!_loc3_)
               {
                  addr0085:
                  BindingManager.executeBindings(this,"generateBoulder",this.generateBoulder);
               }
               §§goto(addr0092);
            }
            §§goto(addr0052);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton1_i(),this._SettingsBarView_Button6_i(),this._SettingsBarView_ToggleButton2_i()];
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_ToggleButton1_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.selected = true;
            if(!_loc3_)
            {
               _loc1_.setStyle("color",16737894);
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "renderToggleButton";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0099:
                              this.renderToggleButton = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 BindingManager.executeBindings(this,"renderToggleButton",this.renderToggleButton);
                              }
                           }
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr007b);
            }
            §§goto(addr0099);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button6_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!_loc3_)
         {
            _loc1_.label = "send Manual Render";
            if(_loc2_)
            {
               _loc1_.setStyle("color",16737894);
               if(_loc2_)
               {
                  _loc1_.addEventListener("click",this.__manualRender_click);
                  if(!_loc3_)
                  {
                     addr005b:
                     _loc1_.id = "manualRender";
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0090);
                              }
                              §§goto(addr00a2);
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0087);
                  }
                  addr0090:
                  this.manualRender = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00a2:
                     BindingManager.executeBindings(this,"manualRender",this.manualRender);
                  }
                  return _loc1_;
               }
               §§goto(addr005b);
            }
            §§goto(addr00a2);
         }
         §§goto(addr005b);
      }
      
      public function __manualRender_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            Facade.getInstance().sendNotification(ApplicationNotificationConstants.RENDER_TICK,{"overrideIt":true});
         }
      }
      
      private function _SettingsBarView_ToggleButton2_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.label = "dev force destroy";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.setStyle("color",16737894);
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "devDestroyEnableButton";
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr007e);
                  }
               }
               §§goto(addr009d);
            }
            addr007e:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr0093);
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr0093);
         }
         addr0093:
         this.devDestroyEnableButton = _loc1_;
         if(_loc3_)
         {
            addr009d:
            BindingManager.executeBindings(this,"devDestroyEnableButton",this.devDestroyEnableButton);
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup3_c() : VGroup
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
               _loc1_.mxmlContent = [this._SettingsBarView_Label1_i(),this._SettingsBarView_ButtonBar1_i()];
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0072);
      }
      
      private function _SettingsBarView_Label1_i() : Label
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Label = new Label();
         if(_loc2_)
         {
            _loc1_.text = "Load playfield:";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "playfiledLabel";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0074:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007d:
                           this.playfiledLabel = _loc1_;
                           if(!_loc3_)
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"playfiledLabel",this.playfiledLabel);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0087);
            }
            §§goto(addr007d);
         }
         §§goto(addr0074);
      }
      
      private function _SettingsBarView_ButtonBar1_i() : ButtonBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ButtonBar = new ButtonBar();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "playfieldBar";
               if(!(_loc2_ && _loc2_))
               {
                  addr0061:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr0096);
                  }
               }
               §§goto(addr0084);
            }
            addr007b:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr0084:
               this.playfieldBar = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr0096:
                  BindingManager.executeBindings(this,"playfieldBar",this.playfieldBar);
               }
            }
            return _loc1_;
         }
         §§goto(addr0061);
      }
      
      private function _SettingsBarView_SkinnableContainer3_i() : SkinnableContainer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.includeInLayout = false;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array12_c);
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("skinClass",DebugBoxSkin);
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "goodGroup";
                        if(!_loc2_)
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00ba:
                                    this.goodGroup = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00cc:
                                       BindingManager.executeBindings(this,"goodGroup",this.goodGroup);
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00cc);
                     }
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr0088);
            }
         }
         addr00d9:
         return _loc1_;
      }
      
      private function _SettingsBarView_Array12_c() : Array
      {
         return [this._SettingsBarView_HGroup6_c()];
      }
      
      private function _SettingsBarView_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_DropDownList1_i(),this._SettingsBarView_TextInput2_i(),this._SettingsBarView_Button7_i()];
            if(_loc3_)
            {
               §§goto(addr004e);
            }
            §§goto(addr005a);
         }
         addr004e:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr005a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_DropDownList1_i() : DropDownList
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropDownList = new DropDownList();
         if(_loc2_)
         {
            _loc1_.labelField = "name";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 120;
               if(!(_loc3_ && _loc2_))
               {
                  addr0054:
                  _loc1_.id = "goodsList";
                  if(_loc2_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr009a);
                        }
                     }
                     addr0088:
                     this.goodsList = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr009a:
                        BindingManager.executeBindings(this,"goodsList",this.goodsList);
                     }
                     §§goto(addr00a7);
                  }
               }
               addr00a7:
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr005f);
      }
      
      private function _SettingsBarView_TextInput2_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(_loc2_)
         {
            _loc1_.width = 30;
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "goodsCountInput";
               addr0035:
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0053);
               }
               §§goto(addr006c);
            }
            addr0053:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr006c:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr0087);
               }
            }
            addr007d:
            this.goodsCountInput = _loc1_;
            if(_loc2_)
            {
               addr0087:
               BindingManager.executeBindings(this,"goodsCountInput",this.goodsCountInput);
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _SettingsBarView_Button7_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!_loc3_)
         {
            _loc1_.label = "grant Goods";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "grantgoodsnButton";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0079:
                           this.grantgoodsnButton = _loc1_;
                           if(!_loc3_)
                           {
                              addr0083:
                              BindingManager.executeBindings(this,"grantgoodsnButton",this.grantgoodsnButton);
                           }
                        }
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr0079);
               }
               addr0090:
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr0079);
      }
      
      private function _SettingsBarView_SkinnableContainer4_i() : SkinnableContainer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc3_ || _loc2_)
         {
            _loc1_.visible = false;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.includeInLayout = false;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array14_c);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0074:
                     _loc1_.setStyle("skinClass",DebugBoxSkin);
                     if(!_loc2_)
                     {
                        _loc1_.id = "permissionsGroup";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00c8:
                                    this.permissionsGroup = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00d2:
                                       BindingManager.executeBindings(this,"permissionsGroup",this.permissionsGroup);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00c8);
                        }
                     }
                     §§goto(addr00d2);
                  }
               }
               addr00df:
               return _loc1_;
            }
            §§goto(addr00c8);
         }
         §§goto(addr0074);
      }
      
      private function _SettingsBarView_Array14_c() : Array
      {
         return [this._SettingsBarView_HGroup7_c()];
      }
      
      private function _SettingsBarView_HGroup7_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_DropDownList2_i(),this._SettingsBarView_DropDownList3_i(),this._SettingsBarView_TextInput3_i(),this._SettingsBarView_Button8_i()];
            if(!_loc2_)
            {
               §§goto(addr0058);
            }
            §§goto(addr006c);
         }
         addr0058:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr006c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_DropDownList2_i() : DropDownList
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropDownList = new DropDownList();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 120;
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "categoryList";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr005a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007c:
                           this.categoryList = _loc1_;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              BindingManager.executeBindings(this,"categoryList",this.categoryList);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007c);
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr005a);
      }
      
      private function _SettingsBarView_DropDownList3_i() : DropDownList
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropDownList = new DropDownList();
         if(_loc2_ || _loc3_)
         {
            _loc1_.labelField = "name";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 120;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "permissionsList";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0085:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr0098);
                     }
                     addr008e:
                     this.permissionsList = _loc1_;
                     if(_loc2_)
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"permissionsList",this.permissionsList);
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0085);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _SettingsBarView_TextInput3_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.width = 30;
            if(_loc2_)
            {
               _loc1_.id = "permissionsCountInput";
               if(!_loc3_)
               {
                  addr004d:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0075:
                           this.permissionsCountInput = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"permissionsCountInput",this.permissionsCountInput);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0087);
            }
         }
         §§goto(addr004d);
      }
      
      private function _SettingsBarView_Button8_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.label = "grant Permission";
            if(_loc2_ || Boolean(this))
            {
               addr0035:
               _loc1_.id = "grantPermissionButton";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0085:
                           this.grantPermissionButton = _loc1_;
                           if(_loc2_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"grantPermissionButton",this.grantPermissionButton);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr008f);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _SettingsBarView_SkinnableContainer5_i() : SkinnableContainer
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc2_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.includeInLayout = false;
               if(!_loc3_)
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array16_c);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.setStyle("skinClass",DebugBoxSkin);
                     if(!_loc3_)
                     {
                        _loc1_.id = "dataGroup";
                        if(_loc2_ || _loc2_)
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a8:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00b1:
                                    this.dataGroup = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00bb:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a8);
                     }
                     addr00c8:
                     return _loc1_;
                  }
                  §§goto(addr0087);
               }
            }
            §§goto(addr00b1);
         }
         §§goto(addr0087);
      }
      
      private function _SettingsBarView_Array16_c() : Array
      {
         return [this._SettingsBarView_HGroup8_c()];
      }
      
      private function _SettingsBarView_HGroup8_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_VGroup4_c()];
            if(!(_loc3_ && Boolean(this)))
            {
               addr0042:
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
         §§goto(addr0042);
      }
      
      private function _SettingsBarView_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button9_i(),this._SettingsBarView_Button10_i(),this._SettingsBarView_HGroup9_c(),this._SettingsBarView_HGroup10_c(),this._SettingsBarView_Button12_i(),this._SettingsBarView_Button13_i(),this._SettingsBarView_HGroup11_c(),this._SettingsBarView_HGroup12_c()];
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr007a);
            }
            §§goto(addr008e);
         }
         addr007a:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr008e:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button9_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.label = "enable Full JSON LOG ";
            if(!_loc2_)
            {
               _loc1_.setStyle("color",6728294);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "enableFullLog";
                  if(_loc3_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0096);
            }
            §§goto(addr007b);
         }
         addr0063:
         if(!_loc1_.document)
         {
            if(_loc3_)
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
         addr0084:
         this.enableFullLog = _loc1_;
         if(_loc3_ || _loc2_)
         {
            addr0096:
            BindingManager.executeBindings(this,"enableFullLog",this.enableFullLog);
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button10_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_)
         {
            _loc1_.label = "trace Professionals";
            if(_loc3_)
            {
               _loc1_.id = "traceProf";
               if(_loc3_ || _loc3_)
               {
                  addr004d:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0059:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr0075:
                           this.traceProf = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"traceProf",this.traceProf);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0059);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr004d);
      }
      
      private function _SettingsBarView_HGroup9_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button11_i()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button11_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!_loc3_)
         {
            _loc1_.label = "shutdown";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.setStyle("color",16737894);
               if(!(_loc3_ && _loc2_))
               {
                  addr0054:
                  _loc1_.id = "shutdownButton";
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0098:
                              this.shutdownButton = _loc1_;
                              if(_loc2_)
                              {
                                 addr00a2:
                                 BindingManager.executeBindings(this,"shutdownButton",this.shutdownButton);
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
               }
               §§goto(addr00a2);
            }
            §§goto(addr0054);
         }
         §§goto(addr0098);
      }
      
      private function _SettingsBarView_HGroup10_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton3_i(),this._SettingsBarView_TextInput4_i()];
            if(!_loc2_)
            {
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
      
      private function _SettingsBarView_ToggleButton3_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.label = "ShowIds";
            if(!_loc3_)
            {
               _loc1_.id = "showId";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0061:
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           addr007d:
                           this.showId = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"showId",this.showId);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr008f);
                     }
                     addr009c:
                     return _loc1_;
                  }
                  §§goto(addr007d);
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr008f);
      }
      
      private function _SettingsBarView_TextInput4_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(_loc3_)
         {
            _loc1_.width = 80;
            if(!_loc2_)
            {
               _loc1_.id = "idlabel";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0067:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0070:
                           this.idlabel = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0082:
                              BindingManager.executeBindings(this,"idlabel",this.idlabel);
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr0082);
                     }
                     addr008f:
                     return _loc1_;
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0082);
            }
            §§goto(addr0067);
         }
         §§goto(addr0070);
      }
      
      private function _SettingsBarView_Button12_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.label = "updatePlayerAndField";
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "newData";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr007b);
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0085);
            }
            addr007b:
            this.newData = _loc1_;
            if(_loc2_)
            {
               addr0085:
               BindingManager.executeBindings(this,"newData",this.newData);
            }
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _SettingsBarView_Button13_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_)
         {
            _loc1_.label = "fake Upselling update";
            if(_loc3_)
            {
               _loc1_.id = "upsellUpdateButton";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0077);
            }
            addr0066:
            _loc1_.document = this;
            if(_loc3_ || Boolean(this))
            {
               addr0077:
               this.upsellUpdateButton = _loc1_;
               if(!_loc2_)
               {
                  addr0081:
                  BindingManager.executeBindings(this,"upsellUpdateButton",this.upsellUpdateButton);
               }
            }
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      private function _SettingsBarView_HGroup11_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button14_i(),this._SettingsBarView_TextInput5_i()];
            if(_loc2_ || _loc3_)
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
         return _loc1_;
      }
      
      private function _SettingsBarView_Button14_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.label = "fake FeatureFeature update";
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "featureUpdateButton";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr006f:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008a:
                           this.featureUpdateButton = _loc1_;
                           if(_loc3_ || _loc2_)
                           {
                              BindingManager.executeBindings(this,"featureUpdateButton",this.featureUpdateButton);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr008a);
            }
         }
         §§goto(addr006f);
      }
      
      private function _SettingsBarView_TextInput5_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(!_loc3_)
         {
            _loc1_.width = 80;
            if(_loc2_)
            {
               _loc1_.toolTip = "feature to add";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "featureTextInput";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0081:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0092:
                              this.featureTextInput = _loc1_;
                              if(_loc2_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"featureTextInput",this.featureTextInput);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0081);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr0060);
         }
         §§goto(addr0092);
      }
      
      private function _SettingsBarView_HGroup12_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton4_i(),this._SettingsBarView_TextInput6_i()];
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0055:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0055);
      }
      
      private function _SettingsBarView_ToggleButton4_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_)
         {
            _loc1_.label = "ShowGroundType";
            if(_loc2_)
            {
               _loc1_.id = "showGroundType";
               if(_loc2_)
               {
                  addr0047:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0070:
                           this.showGroundType = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              BindingManager.executeBindings(this,"showGroundType",this.showGroundType);
                           }
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr008f);
            }
            §§goto(addr0047);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput6_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(_loc2_)
         {
            _loc1_.width = 80;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.id = "idlabelShowGround";
               if(!(_loc3_ && _loc2_))
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr007e:
                           this.idlabelShowGround = _loc1_;
                           if(_loc2_)
                           {
                              addr0088:
                              BindingManager.executeBindings(this,"idlabelShowGround",this.idlabelShowGround);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0088);
                     }
                     addr0095:
                     return _loc1_;
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0088);
            }
            §§goto(addr007e);
         }
         §§goto(addr0053);
      }
      
      private function _SettingsBarView_SkinnableContainer6_i() : SkinnableContainer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc3_)
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.includeInLayout = false;
               if(!_loc2_)
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array23_c);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.setStyle("skinClass",DebugBoxSkin);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0075:
                        _loc1_.id = "layerGroup";
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00b4:
                                    this.layerGroup = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00c6:
                                       BindingManager.executeBindings(this,"layerGroup",this.layerGroup);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00c6);
            }
            §§goto(addr0075);
         }
         §§goto(addr00b4);
      }
      
      private function _SettingsBarView_Array23_c() : Array
      {
         return [this._SettingsBarView_HGroup13_c()];
      }
      
      private function _SettingsBarView_HGroup13_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_VGroup5_c()];
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0055:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _SettingsBarView_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_HGroup14_c(),this._SettingsBarView_HGroup15_c(),this._SettingsBarView_HGroup16_c()];
            if(!_loc3_)
            {
               §§goto(addr0049);
            }
            §§goto(addr0055);
         }
         addr0049:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0055:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup14_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._SettingsBarView_Button15_i(),this._SettingsBarView_Button16_i(),this._SettingsBarView_Button17_i(),this._SettingsBarView_Button18_i(),this._SettingsBarView_Button19_i(),this._SettingsBarView_Button20_i(),this._SettingsBarView_Button21_i(),this._SettingsBarView_Button22_i(),this._SettingsBarView_Button23_i(),this._SettingsBarView_Button24_i(),this._SettingsBarView_Button25_i(),this._SettingsBarView_Button26_i()];
               if(_loc3_ || _loc2_)
               {
                  addr00aa:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00be:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr00aa);
         }
         §§goto(addr00be);
      }
      
      private function _SettingsBarView_Button15_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || _loc2_)
         {
            _loc1_.label = "1";
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 10;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0058);
               }
               §§goto(addr008d);
            }
            §§goto(addr006b);
         }
         addr0058:
         _loc1_.id = "screen1";
         if(_loc2_ || _loc2_)
         {
            addr006b:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr008d:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0096:
                     this.screen1 = _loc1_;
                     if(!_loc3_)
                     {
                        addr00a0:
                        BindingManager.executeBindings(this,"screen1",this.screen1);
                     }
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0096);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button16_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_)
         {
            _loc1_.label = "2";
            if(!_loc2_)
            {
               _loc1_.width = 10;
               if(!_loc2_)
               {
                  addr0042:
                  _loc1_.id = "screen2";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0076);
                           }
                        }
                        §§goto(addr0080);
                     }
                     addr0076:
                     this.screen2 = _loc1_;
                     if(!_loc2_)
                     {
                        addr0080:
                        BindingManager.executeBindings(this,"screen2",this.screen2);
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0065);
            }
            §§goto(addr0080);
         }
         §§goto(addr0042);
      }
      
      private function _SettingsBarView_Button17_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.label = "3";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = 10;
               if(!_loc3_)
               {
                  _loc1_.id = "screen3";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0078);
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0081);
            }
            addr0078:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0081:
               this.screen3 = _loc1_;
               if(!_loc3_)
               {
                  addr008b:
                  BindingManager.executeBindings(this,"screen3",this.screen3);
               }
            }
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _SettingsBarView_Button18_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.label = "4";
            if(_loc2_)
            {
               _loc1_.width = 10;
               if(!_loc3_)
               {
                  _loc1_.id = "screen4";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr007f);
               }
               addr0060:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr007f:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0088);
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr0088);
            }
            addr0088:
            this.screen4 = _loc1_;
            if(_loc2_)
            {
               addr0092:
               BindingManager.executeBindings(this,"screen4",this.screen4);
            }
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _SettingsBarView_Button19_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.label = "5";
            if(_loc2_)
            {
               _loc1_.width = 10;
               if(_loc2_ || _loc3_)
               {
                  addr0040:
                  _loc1_.id = "screen5";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr008f);
                  }
                  addr0072:
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr008f:
                     this.screen5 = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00a1:
                        BindingManager.executeBindings(this,"screen5",this.screen5);
                     }
                  }
                  §§goto(addr00ae);
               }
               addr00ae:
               return _loc1_;
            }
            §§goto(addr0040);
         }
         §§goto(addr005e);
      }
      
      private function _SettingsBarView_Button20_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.label = "6";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 10;
               if(_loc3_)
               {
                  _loc1_.id = "screen6";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008d:
                              this.screen6 = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009f:
                                 BindingManager.executeBindings(this,"screen6",this.screen6);
                              }
                           }
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr008d);
                  }
               }
            }
            §§goto(addr009f);
         }
         addr00ac:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button21_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.label = "7";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.width = 10;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "screen7";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0097);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0097);
            }
            §§goto(addr00a1);
         }
         addr0097:
         this.screen7 = _loc1_;
         if(!_loc3_)
         {
            addr00a1:
            BindingManager.executeBindings(this,"screen7",this.screen7);
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button22_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.label = "8";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.width = 10;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr0087);
            }
            §§goto(addr0090);
         }
         addr005c:
         _loc1_.id = "screen8";
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
                     this.screen8 = _loc1_;
                     if(_loc2_ || _loc3_)
                     {
                        BindingManager.executeBindings(this,"screen8",this.screen8);
                     }
                  }
               }
               §§goto(addr00af);
            }
            §§goto(addr0090);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button23_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.label = "9";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 10;
               if(_loc3_)
               {
                  _loc1_.id = "screen9";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0087:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0090);
                           }
                        }
                        §§goto(addr009a);
                     }
                     addr0090:
                     this.screen9 = _loc1_;
                     if(!_loc2_)
                     {
                        addr009a:
                        BindingManager.executeBindings(this,"screen9",this.screen9);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0087);
               }
            }
            §§goto(addr009a);
         }
         §§goto(addr0087);
      }
      
      private function _SettingsBarView_Button24_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.label = "improvementFeatureBoosterPack";
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 10;
               if(_loc2_)
               {
                  _loc1_.id = "screen10";
                  if(!_loc3_)
                  {
                     addr005b:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0085);
                           }
                           §§goto(addr0097);
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0097);
               }
               addr0085:
               this.screen10 = _loc1_;
               if(_loc2_ || _loc2_)
               {
                  addr0097:
                  BindingManager.executeBindings(this,"screen10",this.screen10);
               }
               return _loc1_;
            }
            §§goto(addr0097);
         }
         §§goto(addr005b);
      }
      
      private function _SettingsBarView_Button25_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.label = "improvementFeatureManagement";
            if(_loc3_)
            {
               _loc1_.width = 10;
               if(_loc3_)
               {
                  _loc1_.id = "screen11";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr007e);
                           }
                        }
                        §§goto(addr0090);
                     }
                     addr007e:
                     this.screen11 = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0090:
                        BindingManager.executeBindings(this,"screen11",this.screen11);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0090);
               }
            }
            §§goto(addr0075);
         }
         §§goto(addr0090);
      }
      
      private function _SettingsBarView_Button26_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!_loc3_)
         {
            _loc1_.label = "improvementFeatureCursorMode";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 10;
               if(_loc2_)
               {
                  addr004a:
                  _loc1_.id = "screen12";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0084);
                           }
                        }
                        §§goto(addr008e);
                     }
                     addr0084:
                     this.screen12 = _loc1_;
                     if(_loc2_)
                     {
                        addr008e:
                        BindingManager.executeBindings(this,"screen12",this.screen12);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr008e);
               }
               addr009b:
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr008e);
      }
      
      private function _SettingsBarView_HGroup15_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button27_i()];
            if(!_loc2_)
            {
               addr0044:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _SettingsBarView_Button27_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_)
         {
            _loc1_.label = "upsell ML";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "showUpsellOfferLayer";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0084:
                           this.showUpsellOfferLayer = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"showUpsellOfferLayer",this.showUpsellOfferLayer);
                           }
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr0084);
               }
               addr009b:
               return _loc1_;
            }
         }
         §§goto(addr0084);
      }
      
      private function _SettingsBarView_HGroup16_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button28_i()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0047:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0047);
      }
      
      private function _SettingsBarView_Button28_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!_loc2_)
         {
            _loc1_.label = "Show World Map";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "showWorldMap";
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006d:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0076:
                           this.showWorldMap = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              addr0088:
                              BindingManager.executeBindings(this,"showWorldMap",this.showWorldMap);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0088);
                     }
                     addr0095:
                     return _loc1_;
                  }
                  §§goto(addr0076);
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr0088);
      }
      
      private function _SettingsBarView_SkinnableContainer7_i() : SkinnableContainer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc3_)
         {
            _loc1_.visible = false;
            if(!_loc2_)
            {
               §§goto(addr002c);
            }
            §§goto(addr00b8);
         }
         addr002c:
         _loc1_.includeInLayout = false;
         if(_loc3_)
         {
            _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array29_c);
            if(!_loc2_)
            {
               _loc1_.setStyle("skinClass",DebugBoxSkin);
               if(_loc3_)
               {
                  _loc1_.id = "cheatGroup";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr008a);
                        }
                        §§goto(addr00b8);
                     }
                  }
                  §§goto(addr00a6);
               }
               addr008a:
               _loc1_.document = this;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00a6:
                  this.cheatGroup = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00b8:
                     BindingManager.executeBindings(this,"cheatGroup",this.cheatGroup);
                  }
               }
               §§goto(addr00c5);
            }
            §§goto(addr00a6);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _SettingsBarView_Array29_c() : Array
      {
         return [this._SettingsBarView_HGroup17_c()];
      }
      
      private function _SettingsBarView_HGroup17_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_VGroup6_c()];
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_VGroup6_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_HGroup18_c(),this._SettingsBarView_HGroup19_c(),this._SettingsBarView_HGroup20_c(),this._SettingsBarView_HGroup21_c(),this._SettingsBarView_HGroup22_c(),this._SettingsBarView_HGroup23_c(),this._SettingsBarView_HGroup24_c(),this._SettingsBarView_HGroup25_c(),this._SettingsBarView_HGroup26_c(),this._SettingsBarView_HGroup27_c(),this._SettingsBarView_HGroup28_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0097:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0097);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup18_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput7_i(),this._SettingsBarView_Button29_i()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr006f:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _SettingsBarView_TextInput7_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(!_loc2_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.width = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "vcCheatInput";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr007c);
            }
         }
         addr0068:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr007c:
               _loc1_.document = this;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0099);
               }
               §§goto(addr00ab);
            }
         }
         addr0099:
         this.vcCheatInput = _loc1_;
         if(!(_loc2_ && _loc3_))
         {
            addr00ab:
            BindingManager.executeBindings(this,"vcCheatInput",this.vcCheatInput);
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Button29_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || _loc3_)
         {
            _loc1_.label = "VirtualCurrency";
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "vcCheatButton";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           addr0086:
                           this.vcCheatButton = _loc1_;
                           if(!_loc3_)
                           {
                              addr0090:
                              BindingManager.executeBindings(this,"vcCheatButton",this.vcCheatButton);
                           }
                        }
                        §§goto(addr009d);
                     }
                  }
               }
               §§goto(addr0086);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _SettingsBarView_HGroup19_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput8_i(),this._SettingsBarView_Button30_i()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0056:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _SettingsBarView_TextInput8_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.restrict = "1234567890\\-";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 100;
               if(_loc3_ || Boolean(this))
               {
                  addr005f:
                  _loc1_.id = "rcCheatInput";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0092:
                              this.rcCheatInput = _loc1_;
                              if(_loc3_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"rcCheatInput",this.rcCheatInput);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr009c);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr0092);
      }
      
      private function _SettingsBarView_Button30_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.label = "RealCurrency";
            if(_loc3_)
            {
               _loc1_.id = "rcCheatButton";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005f:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr007d:
                           this.rcCheatButton = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"rcCheatButton",this.rcCheatButton);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005f);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _SettingsBarView_HGroup20_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput9_i(),this._SettingsBarView_Button31_i()];
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
      
      private function _SettingsBarView_TextInput9_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.restrict = "1234567890\\-";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "ppCheatInput";
                  if(!_loc2_)
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0084:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr009f);
                        }
                     }
                  }
                  addr008d:
                  this.ppCheatInput = _loc1_;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr009f:
                     BindingManager.executeBindings(this,"ppCheatInput",this.ppCheatInput);
                  }
                  return _loc1_;
               }
               §§goto(addr0084);
            }
         }
         §§goto(addr0066);
      }
      
      private function _SettingsBarView_Button31_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!_loc2_)
         {
            _loc1_.label = "ProductionPoints";
            if(!_loc2_)
            {
               _loc1_.id = "ppCheatButton";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr006c);
                     }
                  }
                  §§goto(addr0075);
               }
            }
            §§goto(addr0087);
         }
         addr006c:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0075:
            this.ppCheatButton = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0087:
               BindingManager.executeBindings(this,"ppCheatButton",this.ppCheatButton);
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup21_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput10_i(),this._SettingsBarView_Button32_i()];
            if(_loc3_ || _loc3_)
            {
               §§goto(addr004c);
            }
            §§goto(addr0058);
         }
         addr004c:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0058:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput10_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(_loc2_ || _loc2_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(_loc2_)
            {
               _loc1_.width = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "epCheatInput";
                  if(_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr006f);
               }
               addr0063:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr006f:
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr008c);
            }
            addr008c:
            this.epCheatInput = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr009e:
               BindingManager.executeBindings(this,"epCheatInput",this.epCheatInput);
            }
            return _loc1_;
         }
         §§goto(addr009e);
      }
      
      private function _SettingsBarView_Button32_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!_loc2_)
         {
            _loc1_.label = "EducationPoints";
            if(_loc3_)
            {
               _loc1_.toolTip = "level restricted";
               if(!_loc2_)
               {
                  _loc1_.id = "epCheatButton";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0064:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr007f);
                           }
                        }
                        §§goto(addr0091);
                     }
                  }
               }
               addr007f:
               this.epCheatButton = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0091:
                  BindingManager.executeBindings(this,"epCheatButton",this.epCheatButton);
               }
               §§goto(addr009e);
            }
            §§goto(addr0064);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup22_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput11_i(),this._SettingsBarView_Button33_i()];
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
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
      
      private function _SettingsBarView_TextInput11_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(!_loc3_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(_loc2_)
            {
               _loc1_.width = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "xpCheatInput";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr0081);
                           }
                        }
                        §§goto(addr0093);
                     }
                     addr0081:
                     this.xpCheatInput = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0093:
                        BindingManager.executeBindings(this,"xpCheatInput",this.xpCheatInput);
                     }
                     §§goto(addr00a0);
                  }
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr0093);
            }
         }
         §§goto(addr0081);
      }
      
      private function _SettingsBarView_Button33_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.label = "XP";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.id = "xpCheatButton";
               if(_loc3_ || _loc3_)
               {
                  addr005b:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0084:
                           this.xpCheatButton = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0096:
                              BindingManager.executeBindings(this,"xpCheatButton",this.xpCheatButton);
                           }
                        }
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0096);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _SettingsBarView_HGroup23_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput12_i(),this._SettingsBarView_Button34_i()];
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput12_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(!_loc2_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(_loc3_ || _loc3_)
            {
               _loc1_.width = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "lvlCheatInput";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00ac);
                        }
                     }
                     addr009a:
                     this.lvlCheatInput = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr00ac:
                        BindingManager.executeBindings(this,"lvlCheatInput",this.lvlCheatInput);
                     }
                     §§goto(addr00b9);
                  }
                  addr00b9:
                  return _loc1_;
               }
            }
         }
         §§goto(addr009a);
      }
      
      private function _SettingsBarView_Button34_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.label = "Level";
            if(_loc2_)
            {
               _loc1_.id = "lvlCheatButton";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr007b);
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               addr007b:
               this.lvlCheatButton = _loc1_;
               if(_loc2_)
               {
                  addr0085:
                  BindingManager.executeBindings(this,"lvlCheatButton",this.lvlCheatButton);
               }
               return _loc1_;
            }
         }
         §§goto(addr006a);
      }
      
      private function _SettingsBarView_HGroup24_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput13_i(),this._SettingsBarView_Button35_i()];
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0055:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr0055);
         }
         addr0059:
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput13_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.restrict = "1234567890\\-";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = 100;
               if(_loc2_)
               {
                  _loc1_.id = "pwrCheatInput";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0087:
                              this.pwrCheatInput = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"pwrCheatInput",this.pwrCheatInput);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr0087);
                  }
               }
               addr009e:
               return _loc1_;
            }
         }
         §§goto(addr0087);
      }
      
      private function _SettingsBarView_Button35_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.label = "Energy";
            if(_loc3_)
            {
               _loc1_.id = "pwrCheatButton";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0066:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0077:
                           this.pwrCheatButton = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"pwrCheatButton",this.pwrCheatButton);
                           }
                        }
                        §§goto(addr008e);
                     }
                  }
               }
               §§goto(addr0077);
            }
            addr008e:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _SettingsBarView_HGroup25_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput14_i(),this._SettingsBarView_Button36_i()];
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
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
      
      private function _SettingsBarView_TextInput14_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(!_loc3_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(!_loc3_)
            {
               _loc1_.width = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "moodCheatInput";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr0098);
                        }
                     }
                  }
                  addr0086:
                  this.moodCheatInput = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0098:
                     BindingManager.executeBindings(this,"moodCheatInput",this.moodCheatInput);
                  }
                  §§goto(addr00a5);
               }
               addr00a5:
               return _loc1_;
            }
         }
         §§goto(addr0086);
      }
      
      private function _SettingsBarView_Button36_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || _loc3_)
         {
            _loc1_.label = "Mood";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "moodCheatButton";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0071:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr00a0);
                     }
                  }
               }
               addr008e:
               this.moodCheatButton = _loc1_;
               if(!(_loc3_ && _loc3_))
               {
                  addr00a0:
                  BindingManager.executeBindings(this,"moodCheatButton",this.moodCheatButton);
               }
               §§goto(addr00ad);
            }
            §§goto(addr0071);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup26_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput15_i(),this._SettingsBarView_Button37_i()];
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0068:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr006c);
            }
            §§goto(addr0068);
         }
         addr006c:
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput15_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(!_loc2_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.width = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "worCheatInput";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0087:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0090:
                              this.worCheatInput = _loc1_;
                              if(_loc3_)
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"worCheatInput",this.worCheatInput);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr009a);
      }
      
      private function _SettingsBarView_Button37_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.label = "Worker";
            if(_loc2_ || _loc3_)
            {
               addr0033:
               _loc1_.id = "worCheatButton";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0079:
                           this.worCheatButton = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr008b:
                              BindingManager.executeBindings(this,"worCheatButton",this.worCheatButton);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr008b);
         }
         §§goto(addr0033);
      }
      
      private function _SettingsBarView_HGroup27_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput16_i(),this._SettingsBarView_Button38_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0056:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0056);
      }
      
      private function _SettingsBarView_TextInput16_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(!_loc2_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(_loc3_)
            {
               _loc1_.width = 100;
               if(_loc3_)
               {
                  _loc1_.id = "ricCheatInput";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0058:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0081:
                              this.ricCheatInput = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"ricCheatInput",this.ricCheatInput);
                              }
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr0081);
               }
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _SettingsBarView_Button38_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.label = "Capitalists";
            if(_loc2_)
            {
               _loc1_.id = "ricCheatButton";
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007e:
                           this.ricCheatButton = _loc1_;
                           if(!_loc3_)
                           {
                              addr0088:
                              BindingManager.executeBindings(this,"ricCheatButton",this.ricCheatButton);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr007e);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _SettingsBarView_HGroup28_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput17_i(),this._SettingsBarView_Button39_i()];
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr004c);
            }
            §§goto(addr0058);
         }
         addr004c:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0058:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput17_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(!_loc3_)
         {
            _loc1_.restrict = "1234567890\\-";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 100;
               if(!_loc3_)
               {
                  _loc1_.id = "academicsCheatInput";
                  if(_loc2_ || _loc2_)
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr007a);
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006e);
            }
            addr007a:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0083:
               this.academicsCheatInput = _loc1_;
               if(!_loc3_)
               {
                  BindingManager.executeBindings(this,"academicsCheatInput",this.academicsCheatInput);
               }
            }
            §§goto(addr009a);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _SettingsBarView_Button39_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.label = "Academics";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.id = "academicsCheatButton";
               if(!(_loc3_ && _loc2_))
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007d:
                           this.academicsCheatButton = _loc1_;
                           if(!_loc3_)
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"academicsCheatButton",this.academicsCheatButton);
                           }
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0087);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _SettingsBarView_SkinnableContainer8_c() : SkinnableContainer
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SkinnableContainer = new SkinnableContainer();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsBarView_Array43_c);
            if(!_loc3_)
            {
               _loc1_.setStyle("skinClass",DebugBoxSkin);
               if(!_loc3_)
               {
                  §§goto(addr0066);
               }
               §§goto(addr007a);
            }
         }
         addr0066:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr007a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Array43_c() : Array
      {
         return [this._SettingsBarView_VGroup7_c()];
      }
      
      private function _SettingsBarView_VGroup7_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._SettingsBarView_ToggleButton5_i(),this._SettingsBarView_ToggleButton6_i(),this._SettingsBarView_ToggleButton7_i(),this._SettingsBarView_ToggleButton8_i(),this._SettingsBarView_ToggleButton9_i(),this._SettingsBarView_ToggleButton10_i(),this._SettingsBarView_ToggleButton11_i(),this._SettingsBarView_Button40_i(),this._SettingsBarView_HGroup29_c(),this._SettingsBarView_HGroup30_c(),this._SettingsBarView_ToggleButton12_i(),this._SettingsBarView_Label2_c(),this._SettingsBarView_HGroup31_c()];
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00b6:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr00b6);
      }
      
      private function _SettingsBarView_ToggleButton5_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.label = "resources";
            if(_loc3_ || _loc3_)
            {
               _loc1_.addEventListener("click",this.__showCheat_click);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "showCheat";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0077);
                  }
                  §§goto(addr00aa);
               }
               addr0077:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008f:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr00aa);
               }
               addr0098:
               this.showCheat = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr00aa:
                  BindingManager.executeBindings(this,"showCheat",this.showCheat);
               }
               §§goto(addr00b7);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr008f);
      }
      
      public function __showCheat_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this.cheatGroup.visible = this.cheatGroup.includeInLayout = this.showCheat.selected;
         }
      }
      
      private function _SettingsBarView_ToggleButton6_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.label = "quests (events)";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.addEventListener("click",this.__showQuest_click);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr005e);
               }
               §§goto(addr0069);
            }
            addr005e:
            _loc1_.id = "showQuest";
            if(_loc3_)
            {
               addr0069:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr00a5);
               }
               addr0093:
               this.showQuest = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr00a5:
                  BindingManager.executeBindings(this,"showQuest",this.showQuest);
               }
               §§goto(addr00b2);
            }
            addr00b2:
            return _loc1_;
         }
         §§goto(addr0093);
      }
      
      public function __showQuest_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            this.questGroup.visible = this.questGroup.includeInLayout = this.showQuest.selected;
         }
      }
      
      private function _SettingsBarView_ToggleButton7_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.label = "manage Playfield";
            if(!_loc3_)
            {
               _loc1_.addEventListener("click",this.__showSwitchPlayfield_click);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "showSwitchPlayfield";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0089:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0092);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     addr0092:
                     this.showSwitchPlayfield = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"showSwitchPlayfield",this.showSwitchPlayfield);
                     }
                     §§goto(addr00b1);
                  }
                  addr00b1:
                  return _loc1_;
               }
            }
            §§goto(addr0089);
         }
         §§goto(addr00a4);
      }
      
      public function __showSwitchPlayfield_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.managePlayfield.visible = this.managePlayfield.includeInLayout = this.showSwitchPlayfield.selected;
         }
      }
      
      private function _SettingsBarView_ToggleButton8_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_)
         {
            _loc1_.label = "layer";
            if(!_loc3_)
            {
               _loc1_.addEventListener("click",this.__showLayer_click);
               if(_loc2_)
               {
                  addr004d:
                  _loc1_.id = "showLayer";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr0082);
                        }
                     }
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr004d);
         }
         addr0078:
         this.showLayer = _loc1_;
         if(_loc2_)
         {
            addr0082:
            BindingManager.executeBindings(this,"showLayer",this.showLayer);
         }
         return _loc1_;
      }
      
      public function __showLayer_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            this.layerGroup.visible = this.layerGroup.includeInLayout = this.showLayer.selected;
         }
      }
      
      private function _SettingsBarView_ToggleButton9_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.label = "data";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__showData_click);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "showData";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr00a0);
                     }
                     addr008e:
                     this.showData = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00a0:
                        BindingManager.executeBindings(this,"showData",this.showData);
                     }
                     §§goto(addr00ad);
                  }
               }
               §§goto(addr00a0);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr00a0);
      }
      
      public function __showData_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this.dataGroup.visible = this.dataGroup.includeInLayout = this.showData.selected;
         }
      }
      
      private function _SettingsBarView_ToggleButton10_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc3_)
         {
            _loc1_.label = "permissions";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.addEventListener("click",this.__showPermission_click);
               if(!(_loc3_ && _loc3_))
               {
                  addr005d:
                  _loc1_.id = "showPermission";
                  if(_loc2_ || _loc2_)
                  {
                     addr0070:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr00a3);
                           }
                        }
                        §§goto(addr00b5);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0070);
            }
            addr00a3:
            this.showPermission = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr00b5:
               BindingManager.executeBindings(this,"showPermission",this.showPermission);
            }
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      public function __showPermission_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this.permissionsGroup.visible = this.permissionsGroup.includeInLayout = this.showPermission.selected;
         }
      }
      
      private function _SettingsBarView_ToggleButton11_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_)
         {
            _loc1_.label = "goods";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.addEventListener("click",this.__showGoodlist_click);
               if(!_loc3_)
               {
                  addr0052:
                  _loc1_.id = "showGoodlist";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0091);
            }
            §§goto(addr0052);
         }
         addr007e:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr0087:
            this.showGoodlist = _loc1_;
            if(!_loc3_)
            {
               addr0091:
               BindingManager.executeBindings(this,"showGoodlist",this.showGoodlist);
            }
         }
         return _loc1_;
      }
      
      public function __showGoodlist_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            this.goodGroup.visible = this.goodGroup.includeInLayout = this.showGoodlist.selected;
         }
      }
      
      private function _SettingsBarView_Button40_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.label = "townhallHarvest";
            if(!(_loc2_ && _loc2_))
            {
               addr003e:
               _loc1_.id = "townhallharvestButton";
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr009e);
            }
            addr005c:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.document = this;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr008c);
                  }
               }
               §§goto(addr009e);
            }
            addr008c:
            this.townhallharvestButton = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr009e:
               BindingManager.executeBindings(this,"townhallharvestButton",this.townhallharvestButton);
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _SettingsBarView_HGroup29_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_TextInput18_i(),this._SettingsBarView_Button41_i()];
            if(!(_loc2_ && _loc2_))
            {
               addr004c:
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
         §§goto(addr004c);
      }
      
      private function _SettingsBarView_TextInput18_i() : TextInput
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TextInput = new TextInput();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 30;
            if(_loc2_)
            {
               _loc1_.id = "kaxInput";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0074:
                           this.kaxInput = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              BindingManager.executeBindings(this,"kaxInput",this.kaxInput);
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
               }
               §§goto(addr0074);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _SettingsBarView_Button41_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.label = "kaxtest";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "kaxtest";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0073:
                           this.kaxtest = _loc1_;
                           if(!_loc3_)
                           {
                              addr007d:
                              BindingManager.executeBindings(this,"kaxtest",this.kaxtest);
                           }
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr007d);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _SettingsBarView_HGroup30_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Button42_i(),this._SettingsBarView_TextInput19_i(),this._SettingsBarView_Group2_c()];
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr006e:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _SettingsBarView_Button42_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_ || _loc2_)
         {
            _loc1_.label = "emergency";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "emergency";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0059:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0083:
                           this.emergency = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr0095:
                              BindingManager.executeBindings(this,"emergency",this.emergency);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00a2);
                  }
               }
               §§goto(addr0083);
            }
            §§goto(addr0059);
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _SettingsBarView_TextInput19_i() : TextInput
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInput = new TextInput();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.restrict = "1234567890";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.text = "2301";
               if(_loc3_)
               {
                  _loc1_.width = 36;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0069:
                     _loc1_.id = "emergencyInput";
                     if(!_loc2_)
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr009c);
                              }
                           }
                           §§goto(addr00a6);
                        }
                     }
                  }
                  addr009c:
                  this.emergencyInput = _loc1_;
                  if(!_loc2_)
                  {
                     addr00a6:
                     BindingManager.executeBindings(this,"emergencyInput",this.emergencyInput);
                  }
                  return _loc1_;
               }
               §§goto(addr0074);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0069);
      }
      
      private function _SettingsBarView_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 36;
            if(!_loc2_)
            {
               addr0037:
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
         §§goto(addr0037);
      }
      
      private function _SettingsBarView_ToggleButton12_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.selected = false;
            if(_loc3_)
            {
               _loc1_.label = "start spool";
               if(_loc3_)
               {
                  §§goto(addr0046);
               }
            }
            §§goto(addr0066);
         }
         addr0046:
         _loc1_.id = "toggleSpool";
         if(!(_loc2_ && _loc2_))
         {
            addr0066:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr007b:
                     this.toggleSpool = _loc1_;
                     if(_loc3_)
                     {
                        BindingManager.executeBindings(this,"toggleSpool",this.toggleSpool);
                     }
                  }
                  §§goto(addr0092);
               }
            }
            §§goto(addr007b);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _SettingsBarView_Label2_c() : Label
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Label = new Label();
         if(_loc2_)
         {
            _loc1_.text = "Matrix Coords";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr004d:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr004d);
         }
         addr0051:
         return _loc1_;
      }
      
      private function _SettingsBarView_HGroup31_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._SettingsBarView_Label3_c(),this._SettingsBarView_Label4_i(),this._SettingsBarView_Label5_c(),this._SettingsBarView_Label6_i()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0076:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0076);
      }
      
      private function _SettingsBarView_Label3_c() : Label
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Label = new Label();
         if(!_loc3_)
         {
            _loc1_.text = "x: ";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _SettingsBarView_Label4_i() : Label
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Label = new Label();
         if(_loc2_)
         {
            _loc1_.text = "00";
            if(_loc2_)
            {
               _loc1_.id = "matrixXCoords";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr007a);
                  }
               }
            }
            §§goto(addr0070);
         }
         addr0067:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr0070:
            this.matrixXCoords = _loc1_;
            if(!_loc3_)
            {
               addr007a:
               BindingManager.executeBindings(this,"matrixXCoords",this.matrixXCoords);
            }
         }
         return _loc1_;
      }
      
      private function _SettingsBarView_Label5_c() : Label
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Label = new Label();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.text = "y: ";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0050:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0050);
      }
      
      private function _SettingsBarView_Label6_i() : Label
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Label = new Label();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.text = "00";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "matrixYCoords";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr007d:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0086:
                           this.matrixYCoords = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"matrixYCoords",this.matrixYCoords);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0086);
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0086);
      }
      
      private function _SettingsBarView_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§pop()[0] = new Binding(this,function():String
                     {
                        var _loc1_:* = renderToggleButton.selected ? "Render on" : "Render off";
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"renderToggleButton.label");
                     addr0057:
                     addr0055:
                     return result;
                  }
               }
               §§goto(addr0057);
            }
            §§goto(addr0055);
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get academicsCheatButton() : Button
      {
         return this._1641884153academicsCheatButton;
      }
      
      public function set academicsCheatButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1641884153academicsCheatButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0041:
                  this._1641884153academicsCheatButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"academicsCheatButton",_loc2_,param1));
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
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get academicsCheatInput() : TextInput
      {
         return this._356425693academicsCheatInput;
      }
      
      public function set academicsCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._356425693academicsCheatInput;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._356425693academicsCheatInput = param1;
                  addr0036:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"academicsCheatInput",_loc2_,param1));
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
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryList() : DropDownList
      {
         return this._425996988categoryList;
      }
      
      public function set categoryList(param1:DropDownList) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._425996988categoryList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._425996988categoryList = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryList",_loc2_,param1));
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
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get cheatGroup() : SkinnableContainer
      {
         return this._2057884308cheatGroup;
      }
      
      public function set cheatGroup(param1:SkinnableContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2057884308cheatGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2057884308cheatGroup = param1;
                  addr0044:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cheatGroup",_loc2_,param1));
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
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get cleanStreets() : Button
      {
         return this._287007161cleanStreets;
      }
      
      public function set cleanStreets(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._287007161cleanStreets;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._287007161cleanStreets = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cleanStreets",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : SkinnableContainer
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:SkinnableContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get devDestroyEnableButton() : ToggleButton
      {
         return this._561770842devDestroyEnableButton;
      }
      
      public function set devDestroyEnableButton(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._561770842devDestroyEnableButton;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._561770842devDestroyEnableButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0077);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"devDestroyEnableButton",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get emergency() : Button
      {
         return this._1629013393emergency;
      }
      
      public function set emergency(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1629013393emergency;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1629013393emergency = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergency",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyInput() : TextInput
      {
         return this._1270778695emergencyInput;
      }
      
      public function set emergencyInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1270778695emergencyInput;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1270778695emergencyInput = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyInput",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get enableFullLog() : Button
      {
         return this._608211762enableFullLog;
      }
      
      public function set enableFullLog(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._608211762enableFullLog;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._608211762enableFullLog = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enableFullLog",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get epCheatButton() : Button
      {
         return this._133799878epCheatButton;
      }
      
      public function set epCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._133799878epCheatButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._133799878epCheatButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epCheatButton",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get epCheatInput() : TextInput
      {
         return this._694672834epCheatInput;
      }
      
      public function set epCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._694672834epCheatInput;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._694672834epCheatInput = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epCheatInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventtest() : Button
      {
         return this._32365100eventtest;
      }
      
      public function set eventtest(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._32365100eventtest;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._32365100eventtest = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventtest",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get featureTextInput() : TextInput
      {
         return this._1736110151featureTextInput;
      }
      
      public function set featureTextInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1736110151featureTextInput;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0040:
                  this._1736110151featureTextInput = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureTextInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get featureUpdateButton() : Button
      {
         return this._1167007887featureUpdateButton;
      }
      
      public function set featureUpdateButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1167007887featureUpdateButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1167007887featureUpdateButton = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureUpdateButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get fillWithStreets() : Button
      {
         return this._1895727015fillWithStreets;
      }
      
      public function set fillWithStreets(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1895727015fillWithStreets;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0038:
                  this._1895727015fillWithStreets = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fillWithStreets",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0056);
            }
            addr007c:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get generateBoulder() : Button
      {
         return this._957897400generateBoulder;
      }
      
      public function set generateBoulder(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._957897400generateBoulder;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._957897400generateBoulder = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"generateBoulder",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
         }
         addr0062:
      }
      
      [Bindable(event="propertyChange")]
      public function get goodGroup() : SkinnableContainer
      {
         return this._1354855362goodGroup;
      }
      
      public function set goodGroup(param1:SkinnableContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1354855362goodGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1354855362goodGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodGroup",_loc2_,param1));
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
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodsCountInput() : TextInput
      {
         return this._1656150031goodsCountInput;
      }
      
      public function set goodsCountInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1656150031goodsCountInput;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1656150031goodsCountInput = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodsCountInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get goodsList() : DropDownList
      {
         return this._1394352404goodsList;
      }
      
      public function set goodsList(param1:DropDownList) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1394352404goodsList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1394352404goodsList = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodsList",_loc2_,param1));
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
      public function get grantPermissionButton() : Button
      {
         return this._285626141grantPermissionButton;
      }
      
      public function set grantPermissionButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._285626141grantPermissionButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._285626141grantPermissionButton = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grantPermissionButton",_loc2_,param1));
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
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get grantgoodsnButton() : Button
      {
         return this._1856904262grantgoodsnButton;
      }
      
      public function set grantgoodsnButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1856904262grantgoodsnButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1856904262grantgoodsnButton = param1;
                  addr003f:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grantgoodsnButton",_loc2_,param1));
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
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get idlabel() : TextInput
      {
         return this._1664248505idlabel;
      }
      
      public function set idlabel(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1664248505idlabel;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1664248505idlabel = param1;
                  if(_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idlabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005c);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get idlabelShowGround() : TextInput
      {
         return this._1759683197idlabelShowGround;
      }
      
      public function set idlabelShowGround(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1759683197idlabelShowGround;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0038:
                  this._1759683197idlabelShowGround = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idlabelShowGround",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0043);
            }
            addr0061:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get kaxInput() : TextInput
      {
         return this._1196959496kaxInput;
      }
      
      public function set kaxInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1196959496kaxInput;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1196959496kaxInput = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kaxInput",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get kaxtest() : Button
      {
         return this._929947276kaxtest;
      }
      
      public function set kaxtest(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._929947276kaxtest;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._929947276kaxtest = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kaxtest",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr007a);
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
      }
      
      [Bindable(event="propertyChange")]
      public function get layerGroup() : SkinnableContainer
      {
         return this._70001746layerGroup;
      }
      
      public function set layerGroup(param1:SkinnableContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._70001746layerGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._70001746layerGroup = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerGroup",_loc2_,param1));
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
      public function get lvlCheatButton() : Button
      {
         return this._108771229lvlCheatButton;
      }
      
      public function set lvlCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._108771229lvlCheatButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0039:
                  this._108771229lvlCheatButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlCheatButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get lvlCheatInput() : TextInput
      {
         return this._135803783lvlCheatInput;
      }
      
      public function set lvlCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._135803783lvlCheatInput;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0040:
                  this._135803783lvlCheatInput = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlCheatInput",_loc2_,param1));
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
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get managePlayfield() : SkinnableContainer
      {
         return this._1896433055managePlayfield;
      }
      
      public function set managePlayfield(param1:SkinnableContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1896433055managePlayfield;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1896433055managePlayfield = param1;
                  addr0041:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"managePlayfield",_loc2_,param1));
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
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get manualRender() : Button
      {
         return this._1421629188manualRender;
      }
      
      public function set manualRender(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1421629188manualRender;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1421629188manualRender = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"manualRender",_loc2_,param1));
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
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get matrixXCoords() : Label
      {
         return this._506016843matrixXCoords;
      }
      
      public function set matrixXCoords(param1:Label) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._506016843matrixXCoords;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._506016843matrixXCoords = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0079);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"matrixXCoords",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get matrixYCoords() : Label
      {
         return this._381486838matrixYCoords;
      }
      
      public function set matrixYCoords(param1:Label) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._381486838matrixYCoords;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._381486838matrixYCoords = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"matrixYCoords",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get moodCheatButton() : Button
      {
         return this._510102126moodCheatButton;
      }
      
      public function set moodCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._510102126moodCheatButton;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._510102126moodCheatButton = param1;
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodCheatButton",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get moodCheatInput() : TextInput
      {
         return this._299801870moodCheatInput;
      }
      
      public function set moodCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._299801870moodCheatInput;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._299801870moodCheatInput = param1;
                  if(_loc4_ || _loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodCheatInput",_loc2_,param1));
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
      public function get newData() : Button
      {
         return this._1844723050newData;
      }
      
      public function set newData(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1844723050newData;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1844723050newData = param1;
                  if(_loc3_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newData",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr0051);
               }
            }
            addr0060:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionsCountInput() : TextInput
      {
         return this._1833198495permissionsCountInput;
      }
      
      public function set permissionsCountInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1833198495permissionsCountInput;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1833198495permissionsCountInput = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionsCountInput",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionsGroup() : SkinnableContainer
      {
         return this._1803764827permissionsGroup;
      }
      
      public function set permissionsGroup(param1:SkinnableContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1803764827permissionsGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1803764827permissionsGroup = param1;
                  addr0042:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionsGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionsList() : DropDownList
      {
         return this._1604241598permissionsList;
      }
      
      public function set permissionsList(param1:DropDownList) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1604241598permissionsList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1604241598permissionsList = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionsList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0051);
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldBar() : ButtonBar
      {
         return this._1694490643playfieldBar;
      }
      
      public function set playfieldBar(param1:ButtonBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1694490643playfieldBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               §§push(_loc3_);
            }
         }
         else
         {
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldBar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfiledLabel() : Label
      {
         return this._1088499616playfiledLabel;
      }
      
      public function set playfiledLabel(param1:Label) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1088499616playfiledLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1088499616playfiledLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfiledLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr0051);
               }
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get ppCheatButton() : Button
      {
         return this._933734341ppCheatButton;
      }
      
      public function set ppCheatButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._933734341ppCheatButton;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._933734341ppCheatButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppCheatButton",_loc2_,param1));
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
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get ppCheatInput() : TextInput
      {
         return this._2114582743ppCheatInput;
      }
      
      public function set ppCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2114582743ppCheatInput;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._2114582743ppCheatInput = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppCheatInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
            addr008c:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get pwrCheatButton() : Button
      {
         return this._1649912422pwrCheatButton;
      }
      
      public function set pwrCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1649912422pwrCheatButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1649912422pwrCheatButton = param1;
                  addr0040:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pwrCheatButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get pwrCheatInput() : TextInput
      {
         return this._922860642pwrCheatInput;
      }
      
      public function set pwrCheatInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._922860642pwrCheatInput;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._922860642pwrCheatInput = param1;
                  addr0037:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pwrCheatInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get questGroup() : SkinnableContainer
      {
         return this._553986749questGroup;
      }
      
      public function set questGroup(param1:SkinnableContainer) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._553986749questGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._553986749questGroup = param1;
                  if(!_loc4_)
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCheatButton() : Button
      {
         return this._1331147020rcCheatButton;
      }
      
      public function set rcCheatButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1331147020rcCheatButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1331147020rcCheatButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCheatButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCheatInput() : TextInput
      {
         return this._36687928rcCheatInput;
      }
      
      public function set rcCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._36687928rcCheatInput;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0048:
                  this._36687928rcCheatInput = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007d);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr007d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCheatInput",_loc2_,param1));
                  }
               }
               §§goto(addr008c);
            }
            addr008c:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get renderToggleButton() : ToggleButton
      {
         return this._455351204renderToggleButton;
      }
      
      public function set renderToggleButton(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._455351204renderToggleButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr004c:
                  this._455351204renderToggleButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"renderToggleButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get ricCheatButton() : Button
      {
         return this._489628359ricCheatButton;
      }
      
      public function set ricCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._489628359ricCheatButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._489628359ricCheatButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ricCheatButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get ricCheatInput() : TextInput
      {
         return this._286636829ricCheatInput;
      }
      
      public function set ricCheatInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._286636829ricCheatInput;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._286636829ricCheatInput = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ricCheatInput",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen1() : Button
      {
         return this._1926384965screen1;
      }
      
      public function set screen1(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926384965screen1;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr003f:
                  this._1926384965screen1 = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen1",_loc2_,param1));
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
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen10() : Button
      {
         return this._411608181screen10;
      }
      
      public function set screen10(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._411608181screen10;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr004b:
                  this._411608181screen10 = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen10",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
            addr0074:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen11() : Button
      {
         return this._411608180screen11;
      }
      
      public function set screen11(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._411608180screen11;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._411608180screen11 = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen11",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen12() : Button
      {
         return this._411608179screen12;
      }
      
      public function set screen12(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._411608179screen12;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._411608179screen12 = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen12",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get screen2() : Button
      {
         return this._1926384966screen2;
      }
      
      public function set screen2(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926384966screen2;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1926384966screen2 = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen2",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get screen3() : Button
      {
         return this._1926384967screen3;
      }
      
      public function set screen3(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1926384967screen3;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1926384967screen3 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen3",_loc2_,param1));
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
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen4() : Button
      {
         return this._1926384968screen4;
      }
      
      public function set screen4(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926384968screen4;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1926384968screen4 = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get screen5() : Button
      {
         return this._1926384969screen5;
      }
      
      public function set screen5(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926384969screen5;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1926384969screen5 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen5",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen6() : Button
      {
         return this._1926384970screen6;
      }
      
      public function set screen6(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1926384970screen6;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1926384970screen6 = param1;
                  if(!_loc4_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen6",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0041);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen7() : Button
      {
         return this._1926384971screen7;
      }
      
      public function set screen7(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1926384971screen7;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0040:
                  this._1926384971screen7 = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen7",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen8() : Button
      {
         return this._1926384972screen8;
      }
      
      public function set screen8(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1926384972screen8;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1926384972screen8 = param1;
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen8",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get screen9() : Button
      {
         return this._1926384973screen9;
      }
      
      public function set screen9(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926384973screen9;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1926384973screen9 = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen9",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get showCheat() : ToggleButton
      {
         return this._1929547818showCheat;
      }
      
      public function set showCheat(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1929547818showCheat;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1929547818showCheat = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCheat",_loc2_,param1));
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
      public function get showData() : ToggleButton
      {
         return this._339314617showData;
      }
      
      public function set showData(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._339314617showData;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._339314617showData = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showData",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get showGoodlist() : ToggleButton
      {
         return this._1271037176showGoodlist;
      }
      
      public function set showGoodlist(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1271037176showGoodlist;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1271037176showGoodlist = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGoodlist",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get showGroundType() : ToggleButton
      {
         return this._1471963074showGroundType;
      }
      
      public function set showGroundType(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1471963074showGroundType;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1471963074showGroundType = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGroundType",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get showId() : ToggleButton
      {
         return this._903145224showId;
      }
      
      public function set showId(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._903145224showId;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._903145224showId = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showId",_loc2_,param1));
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
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get showLayer() : ToggleButton
      {
         return this._1921425324showLayer;
      }
      
      public function set showLayer(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1921425324showLayer;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1921425324showLayer = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showLayer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get showPermission() : ToggleButton
      {
         return this._1076470956showPermission;
      }
      
      public function set showPermission(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1076470956showPermission;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0048:
                  this._1076470956showPermission = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showPermission",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get showQuest() : ToggleButton
      {
         return this._1916230683showQuest;
      }
      
      public function set showQuest(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1916230683showQuest;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1916230683showQuest = param1;
                  addr0040:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showQuest",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get showSwitchPlayfield() : ToggleButton
      {
         return this._1575623861showSwitchPlayfield;
      }
      
      public function set showSwitchPlayfield(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1575623861showSwitchPlayfield;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1575623861showSwitchPlayfield = param1;
                  if(_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showSwitchPlayfield",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get showUpsellOfferLayer() : Button
      {
         return this._1448052289showUpsellOfferLayer;
      }
      
      public function set showUpsellOfferLayer(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1448052289showUpsellOfferLayer;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1448052289showUpsellOfferLayer = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showUpsellOfferLayer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0056);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get showWorldMap() : Button
      {
         return this._815758713showWorldMap;
      }
      
      public function set showWorldMap(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._815758713showWorldMap;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._815758713showWorldMap = param1;
                  if(_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showWorldMap",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get shutdownButton() : Button
      {
         return this._1981120216shutdownButton;
      }
      
      public function set shutdownButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1981120216shutdownButton;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1981120216shutdownButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shutdownButton",_loc2_,param1));
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
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get textinput() : TextInput
      {
         return this._1028503875textinput;
      }
      
      public function set textinput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1028503875textinput;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1028503875textinput = param1;
                  addr003e:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textinput",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get toggleSpool() : ToggleButton
      {
         return this._656707557toggleSpool;
      }
      
      public function set toggleSpool(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._656707557toggleSpool;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._656707557toggleSpool = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toggleSpool",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get townhallharvestButton() : Button
      {
         return this._188490736townhallharvestButton;
      }
      
      public function set townhallharvestButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._188490736townhallharvestButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._188490736townhallharvestButton = param1;
                  addr0047:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"townhallharvestButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get traceProf() : Button
      {
         return this._724164158traceProf;
      }
      
      public function set traceProf(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._724164158traceProf;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._724164158traceProf = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traceProf",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tuttest() : Button
      {
         return this._963459803tuttest;
      }
      
      public function set tuttest(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._963459803tuttest;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._963459803tuttest = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tuttest",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0068);
            }
            addr0087:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get upsellUpdateButton() : Button
      {
         return this._2034630040upsellUpdateButton;
      }
      
      public function set upsellUpdateButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2034630040upsellUpdateButton;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2034630040upsellUpdateButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upsellUpdateButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get vcCheatButton() : Button
      {
         return this._1790208248vcCheatButton;
      }
      
      public function set vcCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1790208248vcCheatButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1790208248vcCheatButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcCheatButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get vcCheatInput() : TextInput
      {
         return this._479642948vcCheatInput;
      }
      
      public function set vcCheatInput(param1:TextInput) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._479642948vcCheatInput;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0037:
                  this._479642948vcCheatInput = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcCheatInput",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get worCheatButton() : Button
      {
         return this._1453368555worCheatButton;
      }
      
      public function set worCheatButton(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1453368555worCheatButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1453368555worCheatButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0071);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worCheatButton",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get worCheatInput() : TextInput
      {
         return this._2131345137worCheatInput;
      }
      
      public function set worCheatInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2131345137worCheatInput;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._2131345137worCheatInput = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worCheatInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get xpCheatButton() : Button
      {
         return this._1413489715xpCheatButton;
      }
      
      public function set xpCheatButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1413489715xpCheatButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1413489715xpCheatButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xpCheatButton",_loc2_,param1));
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
      public function get xpCheatInput() : TextInput
      {
         return this._1147722801xpCheatInput;
      }
      
      public function set xpCheatInput(param1:TextInput) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1147722801xpCheatInput;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1147722801xpCheatInput = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr006a);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xpCheatInput",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
         }
         addr0079:
      }
   }
}

