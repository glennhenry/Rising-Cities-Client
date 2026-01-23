package net.bigpoint.cityrama.view.miniLayer.ui
{
   import com.greensock.TweenMax;
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
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementReplacementMiniLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementReplacementMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const RENEW_IMPROVEMENT:String = "RENEW_IMPROVEMENT";
      
      public static const KEEP_IMPROVEMENT:String = "KEEP_IMPROVEMENT";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      public static const OLD_IMPRO_OVER:String = "OLD_IMPRO_OVER";
      
      public static const IMPRO_OUT:String = "IMPRO_OUT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         RENEW_IMPROVEMENT = "RENEW_IMPROVEMENT";
         if(_loc2_ || ImprovementReplacementMiniLayer)
         {
            §§goto(addr002c);
         }
         §§goto(addr0068);
      }
      addr002c:
      
      public static const REPLACE_IMPROVEMENT:String = "REPLACE_IMPROVEMENT";
      
      if(!_loc1_)
      {
         KEEP_IMPROVEMENT = "KEEP_IMPROVEMENT";
         if(!_loc1_)
         {
            OPEN_TREASURY = "OPEN_TREASURY";
            if(!(_loc1_ && ImprovementReplacementMiniLayer))
            {
               addr0068:
               OLD_IMPRO_OVER = "OLD_IMPRO_OVER";
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr007e);
               }
               §§goto(addr0096);
            }
         }
         §§goto(addr00a4);
      }
      addr007e:
      
      public static const NEW_IMPRO_OVER:String = "NEW_IMPRO_OVER";
      
      if(!_loc1_)
      {
         addr0096:
         IMPRO_OUT = "IMPRO_OUT";
         if(!_loc1_)
         {
            addr00a4:
            _skinParts = {
               "moveArea":false,
               "sparkle":false,
               "closeButton":false,
               "controlBarGroup":false,
               "attentionSign":false,
               "contentGroup":false,
               "titleDisplay":false
            };
         }
      }
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1632457241leftButton:MultistateButton;
      
      private var _305571606newImprovement:BriskImageDynaLib;
      
      private var _1784902884newImprovementBackground:BriskImageDynaLib;
      
      private var _36962861newImprovementBadge:BriskImageDynaLib;
      
      private var _42097929newImprovementGroup:Group;
      
      private var _411412433oldImprovement:BriskImageDynaLib;
      
      private var _1909676733oldImprovementBackground:BriskImageDynaLib;
      
      private var _859838644oldImprovementBadge:BriskImageDynaLib;
      
      private var _864973712oldImprovementGroup:Group;
      
      private var _580382470replaceButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementReplacementMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementReplacementMiniLayer()
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
         if(_loc4_ || Boolean(this))
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00c2:
                                             §§pop().§§slot[1] = this._ImprovementReplacementMiniLayer_bindingsSetup();
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr00da:
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr00e9:
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0141:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ImprovementReplacementMiniLayerWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0155:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           addr0165:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr017c:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementReplacementMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr019a:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01e6:
                                                                                       this.width = 540;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01f1:
                                                                                          this.height = 313;
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr0204:
                                                                                             this.showAttentionSign = true;
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr0217:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementReplacementMiniLayer_Array1_c);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr022f:
                                                                                                   i = 0;
                                                                                                   addr022d:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          loop0:
                                                                                          while(true)
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
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      Binding(bindings[i]).execute();
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc3_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            var _temp_23:* = §§pop();
                                                                                                            §§pop().§§slot[4] = _temp_23;
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                          addr0294:
                                                                                       }
                                                                                       §§goto(addr0204);
                                                                                    }
                                                                                    §§goto(addr01f1);
                                                                                 }
                                                                                 §§goto(addr0294);
                                                                              }
                                                                              §§goto(addr022d);
                                                                           }
                                                                           §§goto(addr0204);
                                                                        }
                                                                        §§goto(addr022f);
                                                                     }
                                                                     §§goto(addr01f1);
                                                                  }
                                                                  §§goto(addr0165);
                                                               }
                                                               §§goto(addr0155);
                                                            }
                                                            §§goto(addr017c);
                                                         }
                                                         §§goto(addr022d);
                                                      }
                                                      §§goto(addr0165);
                                                   }
                                                   §§goto(addr01e6);
                                                }
                                                §§goto(addr0165);
                                             }
                                             §§goto(addr0204);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr017c);
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr01f1);
                              }
                              §§goto(addr019a);
                           }
                        }
                        §§goto(addr01f1);
                     }
                     §§goto(addr0204);
                  }
                  §§goto(addr00e9);
               }
               §§goto(addr0217);
            }
            §§goto(addr0048);
         }
         §§goto(addr00c2);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            ImprovementReplacementMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               addr0021:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0021);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._data);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0060);
                           }
                           §§goto(addr0145);
                        }
                        §§goto(addr005f);
                     }
                  }
                  addr0060:
                  §§push(this._isDirty);
                  if(_loc1_)
                  {
                     addr005f:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this._isDirty = false;
                        if(_loc1_)
                        {
                           §§push(this.replaceButton);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.replace.capital"));
                              if(_loc1_)
                              {
                                 §§pop().label = §§pop();
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§goto(addr00bd);
                                 }
                                 §§goto(addr0273);
                              }
                              addr00bd:
                              this.replaceButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.replace.tooltip");
                              §§goto(addr00b1);
                           }
                           addr00b1:
                           addr00ad:
                           if(_loc1_)
                           {
                              §§push(this.oldImprovement);
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop().briskDynaVo = this._data.oldImproData;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    this.oldImprovementBackground.briskDynaVo = this._data.oldImproBackground;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       this.oldImprovementBadge.briskDynaVo = this._data.oldImproBadge;
                                       if(!_loc2_)
                                       {
                                          this.newImprovement.briskDynaVo = this._data.newImproData;
                                          if(!_loc2_)
                                          {
                                             this.newImprovementBackground.briskDynaVo = this._data.newImproBackground;
                                             if(_loc1_)
                                             {
                                                addr0145:
                                                this.newImprovementBadge.briskDynaVo = this._data.newImproBadge;
                                                if(_loc1_ || _loc2_)
                                                {
                                                   §§push(this._data);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr0172:
                                                      §§push(§§pop().state);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(ImprovementReplacementMiniLayerVo.STATE_REPLACE);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  addr019e:
                                                                  title = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.title.capital");
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this.flavourText);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.flavour"));
                                                                        if(_loc1_)
                                                                        {
                                                                           §§pop().text = §§pop();
                                                                           if(_loc1_ || Boolean(this))
                                                                           {
                                                                              §§push(this.leftButton);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.keep.capital"));
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§pop().label = §§pop();
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr0208:
                                                                                       §§push(this.leftButton);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.btn.keep.tooltip"));
                                                                                          if(_loc1_ || Boolean(this))
                                                                                          {
                                                                                             §§pop().toolTip = §§pop();
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                §§push(this.leftButton);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§goto(addr023a);
                                                                                                }
                                                                                                §§goto(addr04d9);
                                                                                             }
                                                                                             §§goto(addr04a6);
                                                                                          }
                                                                                          §§goto(addr04e5);
                                                                                       }
                                                                                       §§goto(addr02b7);
                                                                                    }
                                                                                    §§goto(addr038b);
                                                                                 }
                                                                                 §§goto(addr04e5);
                                                                              }
                                                                              addr023a:
                                                                              §§push(false);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§pop().showSparkle = §§pop();
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    §§push(this.leftButton);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§push("styleName");
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§pop().setStyle(§§pop(),"abort");
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             addr0273:
                                                                                             §§push(this.leftButton);
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                §§push("icon_cancel");
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   addr029e:
                                                                                                   §§pop().imageNameLeft = §§pop();
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(this.leftButton);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr02b7:
                                                                                                         §§push("gui_popups_miniLayer");
                                                                                                         if(_loc1_ || _loc1_)
                                                                                                         {
                                                                                                            §§pop().libNameLeft = §§pop();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr02cf:
                                                                                                               §§push(this.leftButton);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §§goto(addr02de);
                                                                                                                  }
                                                                                                                  §§goto(addr047e);
                                                                                                               }
                                                                                                               §§goto(addr04d9);
                                                                                                            }
                                                                                                            §§goto(addr048e);
                                                                                                         }
                                                                                                         §§goto(addr03d5);
                                                                                                      }
                                                                                                      §§goto(addr039c);
                                                                                                   }
                                                                                                   §§goto(addr038b);
                                                                                                }
                                                                                                §§goto(addr03f9);
                                                                                             }
                                                                                             §§goto(addr02b7);
                                                                                          }
                                                                                          §§goto(addr02cf);
                                                                                       }
                                                                                       §§goto(addr029e);
                                                                                    }
                                                                                    §§goto(addr04d9);
                                                                                 }
                                                                                 §§goto(addr03e5);
                                                                              }
                                                                              addr02de:
                                                                              §§pop().useConfirmation = §§pop();
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                                 addr038b:
                                                                                 §§push(this.leftButton);
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    addr039c:
                                                                                    §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital"));
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§pop().label = §§pop();
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          addr03bc:
                                                                                          §§push(this.leftButton);
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             §§push("dd_button_icon");
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                addr03d5:
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   addr03e5:
                                                                                                   §§push(this.leftButton);
                                                                                                   if(_loc1_ || Boolean(this))
                                                                                                   {
                                                                                                      addr03f9:
                                                                                                      §§pop().libNameLeft = "gui_resources_icons";
                                                                                                      addr03f6:
                                                                                                      if(_loc1_ || _loc1_)
                                                                                                      {
                                                                                                         addr0409:
                                                                                                         §§push(this.leftButton);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            if(_loc1_ || _loc2_)
                                                                                                            {
                                                                                                               §§pop().useConfirmation = §§pop();
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  addr0428:
                                                                                                                  §§push(this.leftButton);
                                                                                                                  if(_loc1_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(this._data);
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§pop().priceToConfirm = §§pop().improvementVo.renewalPrice;
                                                                                                                        if(!(_loc2_ && _loc1_))
                                                                                                                        {
                                                                                                                           addr0460:
                                                                                                                           §§push(this.leftButton);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this._data);
                                                                                                                              if(!(_loc2_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr047e:
                                                                                                                                 §§pop().showPlus = !§§pop().renewalAffordable;
                                                                                                                                 addr047a:
                                                                                                                                 if(_loc1_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr048e:
                                                                                                                                    §§push(this.leftButton);
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       addr049b:
                                                                                                                                       §§pop().showSparkle = this._data.renewalAffordable;
                                                                                                                                       addr0497:
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr04a6:
                                                                                                                                          addr04aa:
                                                                                                                                          if(this._data.renewalAffordable)
                                                                                                                                          {
                                                                                                                                             if(_loc1_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr04be:
                                                                                                                                                §§push(this.leftButton);
                                                                                                                                                if(_loc1_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   addr04e5:
                                                                                                                                                   §§pop().toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.tooltip");
                                                                                                                                                   §§goto(addr04d9);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04f8);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr04f4);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04be);
                                                                                                                                    }
                                                                                                                                    addr04d9:
                                                                                                                                    if(_loc1_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       addr04f8:
                                                                                                                                       this.leftButton.addEventListener(MouseEvent.ROLL_OVER,this.onLeftButtonRollOver);
                                                                                                                                       addr04f4:
                                                                                                                                    }
                                                                                                                                    §§goto(addr0504);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04be);
                                                                                                                              }
                                                                                                                              §§goto(addr049b);
                                                                                                                           }
                                                                                                                           §§goto(addr0497);
                                                                                                                        }
                                                                                                                        §§goto(addr04a6);
                                                                                                                     }
                                                                                                                     §§goto(addr047a);
                                                                                                                  }
                                                                                                                  §§goto(addr04f8);
                                                                                                               }
                                                                                                               §§goto(addr0504);
                                                                                                            }
                                                                                                            §§goto(addr047e);
                                                                                                         }
                                                                                                         §§goto(addr04f8);
                                                                                                      }
                                                                                                      §§goto(addr0428);
                                                                                                   }
                                                                                                   §§goto(addr04d9);
                                                                                                }
                                                                                                §§goto(addr0460);
                                                                                             }
                                                                                             §§goto(addr03f9);
                                                                                          }
                                                                                          §§goto(addr04f8);
                                                                                       }
                                                                                       §§goto(addr048e);
                                                                                    }
                                                                                    §§goto(addr04e5);
                                                                                 }
                                                                                 §§goto(addr03f6);
                                                                              }
                                                                              §§goto(addr0504);
                                                                           }
                                                                           §§goto(addr0409);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr034c:
                                                                           §§pop().text = §§pop();
                                                                           if(_loc1_)
                                                                           {
                                                                              addr0357:
                                                                              this.oldImprovement.alpha = 0.7;
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr0361:
                                                                                 TweenMax.to(this.oldImprovement,0,{"colorMatrixFilter":{
                                                                                    "amount":1,
                                                                                    "saturation":0
                                                                                 }});
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr038b);
                                                                                 }
                                                                              }
                                                                              §§goto(addr03e5);
                                                                           }
                                                                        }
                                                                        §§goto(addr0504);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0340:
                                                                        §§push(LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.flavour"));
                                                                     }
                                                                     §§goto(addr034c);
                                                                  }
                                                                  §§goto(addr0208);
                                                               }
                                                               §§goto(addr0504);
                                                            }
                                                            else
                                                            {
                                                               §§push(this._data);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  §§goto(addr030c);
                                                               }
                                                            }
                                                            §§goto(addr04aa);
                                                         }
                                                         addr030c:
                                                         §§goto(addr0306);
                                                      }
                                                      addr0306:
                                                      §§goto(addr0303);
                                                   }
                                                   addr0303:
                                                   if(§§pop().state == ImprovementReplacementMiniLayerVo.STATE_REPLACE_EXPIRED)
                                                   {
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         title = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.title.capital");
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§goto(addr0340);
                                                            §§push(this.flavourText);
                                                         }
                                                         §§goto(addr038b);
                                                      }
                                                      §§goto(addr048e);
                                                   }
                                                   §§goto(addr0504);
                                                }
                                                §§goto(addr04f4);
                                             }
                                             §§goto(addr03e5);
                                          }
                                          §§goto(addr03bc);
                                       }
                                       §§goto(addr019e);
                                    }
                                    §§goto(addr0273);
                                 }
                                 §§goto(addr0145);
                              }
                              §§goto(addr0357);
                           }
                           §§goto(addr0504);
                        }
                        §§goto(addr048e);
                     }
                     §§goto(addr0361);
                  }
                  addr0504:
                  return;
               }
               §§goto(addr0172);
            }
            §§goto(addr04f4);
         }
         §§goto(addr00ad);
      }
      
      private function onLeftButtonRollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.leftButton);
            if(_loc2_ || Boolean(this))
            {
               §§pop().removeEventListener(MouseEvent.ROLL_OVER,this.onLeftButtonRollOver);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§push(this.leftButton);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§pop().addEventListener(MouseEvent.ROLL_OUT,this.onLeftButtonRollOut);
                     if(_loc2_)
                     {
                        addr0087:
                        this.leftButton.label = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.improvementVo.renewalPrice));
                        addr0083:
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0087);
               }
               addr00a0:
               return;
            }
            §§goto(addr0087);
         }
         §§goto(addr0083);
      }
      
      private function onLeftButtonRollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.leftButton);
            if(!_loc3_)
            {
               §§pop().removeEventListener(MouseEvent.ROLL_OUT,this.onLeftButtonRollOut);
               if(_loc2_)
               {
                  §§push(this.leftButton);
                  if(!_loc3_)
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0055);
            }
            addr0044:
            §§pop().addEventListener(MouseEvent.ROLL_OVER,this.onLeftButtonRollOver);
            if(!_loc3_)
            {
               addr0059:
               this.leftButton.label = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.replace.expired.btn.renew.capital");
               addr0055:
            }
            §§goto(addr0067);
         }
         addr0067:
      }
      
      public function set data(param1:ImprovementReplacementMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._data = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               this._isDirty = true;
               if(!_loc2_)
               {
                  addr0040:
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function handleReplace() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event(REPLACE_IMPROVEMENT,true,true));
         }
      }
      
      private function handleLeftButtonAction() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._data);
            if(!_loc1_)
            {
               §§push(§§pop().state);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(ImprovementReplacementMiniLayerVo.STATE_REPLACE);
                  if(_loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc2_)
                        {
                           dispatchEvent(new Event(KEEP_IMPROVEMENT,true,true));
                           if(_loc1_)
                           {
                           }
                        }
                     }
                     else
                     {
                        addr0072:
                        addr006c:
                        addr0069:
                        if(this._data.state == ImprovementReplacementMiniLayerVo.STATE_REPLACE_EXPIRED)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(this.leftButton.showPlus)
                              {
                                 if(!_loc1_)
                                 {
                                    dispatchEvent(new Event(OPEN_TREASURY,true,true));
                                    if(_loc1_ && Boolean(this))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 dispatchEvent(new Event(RENEW_IMPROVEMENT,true,true));
                              }
                           }
                        }
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr006c);
            }
            §§goto(addr0069);
         }
         addr00cc:
      }
      
      private function handleImprovementOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1.currentTarget is Group)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(param1.currentTarget as Group == this.oldImprovementGroup)
                  {
                     if(_loc2_)
                     {
                        addr0050:
                        dispatchEvent(new Event(OLD_IMPRO_OVER,true,true));
                        if(_loc2_ || Boolean(param1))
                        {
                        }
                     }
                  }
                  else if(param1.currentTarget as Group == this.newImprovementGroup)
                  {
                     if(_loc2_)
                     {
                        dispatchEvent(new Event(NEW_IMPRO_OVER,true,true));
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function handleImprovementOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            dispatchEvent(new Event(IMPRO_OUT,true,true));
         }
      }
      
      private function _ImprovementReplacementMiniLayer_Array1_c() : Array
      {
         return [this._ImprovementReplacementMiniLayer_VGroup1_c(),this._ImprovementReplacementMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _ImprovementReplacementMiniLayer_VGroup1_c() : VGroup
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
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0057:
                     _loc1_.verticalAlign = "top";
                     if(!_loc3_)
                     {
                        _loc1_.gap = 10;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_HGroup1_c(),this._ImprovementReplacementMiniLayer_HGroup2_c(),this._ImprovementReplacementMiniLayer_HGroup5_c()];
                           if(!_loc3_)
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00af);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr00af);
         }
         §§goto(addr0057);
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || _loc2_)
            {
               _loc1_.height = 50;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_LocaLabel1_i()];
                        addr006c:
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a6:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00aa);
                        }
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr006c);
            }
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "flavourText";
                     if(_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr009a:
                                 this.flavourText = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr009a);
                     }
                     addr00b1:
                     return _loc1_;
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00a4);
            }
            §§goto(addr009a);
         }
         §§goto(addr00a4);
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.gap = 20;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_Group1_i(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib5_c(),this._ImprovementReplacementMiniLayer_Group2_i()];
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0095:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr0099);
            }
            §§goto(addr0095);
         }
         addr0099:
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib1_i(),this._ImprovementReplacementMiniLayer_HGroup3_c(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib3_i(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib4_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.addEventListener("mouseOver",this.__oldImprovementGroup_mouseOver);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.addEventListener("mouseOut",this.__oldImprovementGroup_mouseOut);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0092:
                     _loc1_.id = "oldImprovementGroup";
                     if(!_loc2_)
                     {
                        addr009d:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00c4:
                                 this.oldImprovementGroup = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00ce:
                                    BindingManager.executeBindings(this,"oldImprovementGroup",this.oldImprovementGroup);
                                 }
                              }
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00ce);
                  }
                  addr00db:
                  return _loc1_;
               }
               §§goto(addr00c4);
            }
            §§goto(addr0092);
         }
         §§goto(addr009d);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "hip_cardboard_small";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "oldImprovementBackground";
                  if(_loc2_)
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0063);
            }
            addr007a:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0083:
               this.oldImprovementBackground = _loc1_;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0095:
                  BindingManager.executeBindings(this,"oldImprovementBackground",this.oldImprovementBackground);
               }
            }
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 118;
            if(_loc2_)
            {
               _loc1_.width = 118;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0062:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr007f);
                     }
                     §§goto(addr0097);
                  }
                  addr007f:
                  _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib2_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0097:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a7);
               }
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.id = "oldImprovement";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0045:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0063:
                        this.oldImprovement = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           BindingManager.executeBindings(this,"oldImprovement",this.oldImprovement);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0063);
            }
         }
         §§goto(addr0045);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.left = 3;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "hip_badge_common_small";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "oldImprovementBadge";
                     if(_loc2_ || Boolean(this))
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr009e:
                                 this.oldImprovementBadge = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00b0:
                                    BindingManager.executeBindings(this,"oldImprovementBadge",this.oldImprovementBadge);
                                 }
                              }
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr009e);
                     }
                  }
                  addr00bd:
                  return _loc1_;
               }
            }
            §§goto(addr006d);
         }
         §§goto(addr00b0);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "delete_indicator";
               if(_loc2_)
               {
                  _loc1_.right = -6;
                  if(_loc2_)
                  {
                     _loc1_.top = -6;
                     if(_loc2_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0078:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr006c);
            }
            §§goto(addr0078);
         }
         addr007c:
         return _loc1_;
      }
      
      public function __oldImprovementGroup_mouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleImprovementOver(param1);
         }
      }
      
      public function __oldImprovementGroup_mouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.handleImprovementOut(param1);
         }
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_ || Boolean(this))
            {
               addr004a:
               _loc1_.dynaBmpSourceName = "replace_icon";
               if(_loc3_)
               {
                  §§goto(addr0056);
               }
               §§goto(addr006a);
            }
            addr0056:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr006a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _ImprovementReplacementMiniLayer_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib6_i(),this._ImprovementReplacementMiniLayer_HGroup4_c(),this._ImprovementReplacementMiniLayer_BriskImageDynaLib8_i()];
            if(_loc3_ || _loc3_)
            {
               _loc1_.addEventListener("mouseOver",this.__newImprovementGroup_mouseOver);
               if(_loc3_)
               {
                  _loc1_.addEventListener("mouseOut",this.__newImprovementGroup_mouseOut);
                  if(_loc3_)
                  {
                     addr007b:
                     _loc1_.id = "newImprovementGroup";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00b0:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00b9:
                                 this.newImprovementGroup = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00c3:
                                    BindingManager.executeBindings(this,"newImprovementGroup",this.newImprovementGroup);
                                 }
                              }
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr007b);
            }
            §§goto(addr00b0);
         }
         addr00d0:
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "hip_cardboard_small";
               if(!_loc2_)
               {
                  _loc1_.id = "newImprovementBackground";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0089:
                              this.newImprovementBackground = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"newImprovementBackground",this.newImprovementBackground);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr00a8);
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr006b);
            }
         }
         addr00a8:
         return _loc1_;
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.height = 118;
            if(!_loc3_)
            {
               addr0029:
               _loc1_.width = 118;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005f:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_BriskImageDynaLib7_i()];
                        if(_loc2_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0085:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0089);
                        }
                     }
                     §§goto(addr0085);
                  }
                  addr0089:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
            §§goto(addr0079);
         }
         §§goto(addr0029);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "newImprovement";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0056:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0071:
                        this.newImprovement = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0083:
                           BindingManager.executeBindings(this,"newImprovement",this.newImprovement);
                        }
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0071);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _ImprovementReplacementMiniLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 3;
               if(!_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "hip_badge_common_small";
                  if(_loc3_)
                  {
                     _loc1_.id = "newImprovementBadge";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0088:
                                 this.newImprovementBadge = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0092:
                                    BindingManager.executeBindings(this,"newImprovementBadge",this.newImprovementBadge);
                                 }
                              }
                              §§goto(addr009f);
                           }
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr007f);
            }
            §§goto(addr0088);
         }
         addr009f:
         return _loc1_;
      }
      
      public function __newImprovementGroup_mouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleImprovementOver(param1);
         }
      }
      
      public function __newImprovementGroup_mouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleImprovementOut(param1);
         }
      }
      
      private function _ImprovementReplacementMiniLayer_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.gap = 10;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._ImprovementReplacementMiniLayer_MultistateButton1_i(),this._ImprovementReplacementMiniLayer_MultistateButton2_i()];
                     if(!_loc2_)
                     {
                        addr0082:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0096:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0082);
            }
         }
         §§goto(addr0096);
      }
      
      private function _ImprovementReplacementMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 204;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.addEventListener("click",this.__leftButton_click);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "leftButton";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00a5);
                           }
                        }
                        §§goto(addr00af);
                     }
                     addr00a5:
                     this.leftButton = _loc1_;
                     if(_loc3_)
                     {
                        addr00af:
                        BindingManager.executeBindings(this,"leftButton",this.leftButton);
                     }
                  }
                  §§goto(addr00bc);
               }
            }
            §§goto(addr00af);
         }
         addr00bc:
         return _loc1_;
      }
      
      public function __leftButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.handleLeftButtonAction();
         }
      }
      
      private function _ImprovementReplacementMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "icon_check";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.styleName = "confirm";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.addEventListener("click",this.__replaceButton_click);
                        if(!_loc2_)
                        {
                           §§goto(addr008b);
                        }
                        §§goto(addr00b7);
                     }
                     addr008b:
                     _loc1_.id = "replaceButton";
                     if(_loc3_ || _loc3_)
                     {
                        addr009e:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr00b7:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr00c0);
                              }
                           }
                           §§goto(addr00d2);
                        }
                        addr00c0:
                        this.replaceButton = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00d2:
                           BindingManager.executeBindings(this,"replaceButton",this.replaceButton);
                        }
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr00d2);
            }
            addr00df:
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      public function __replaceButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleReplace();
         }
      }
      
      private function _ImprovementReplacementMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 74;
            if(!_loc2_)
            {
               _loc1_.top = 65;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = 80;
                  if(_loc3_)
                  {
                     addr005c:
                     _loc1_.id = "uiInfolayerAlignmentLine";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr009a);
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00a4);
               }
               addr009a:
               this.uiInfolayerAlignmentLine = _loc1_;
               if(_loc3_)
               {
                  addr00a4:
                  BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
               }
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr0089);
      }
      
      private function _ImprovementReplacementMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(_loc2_)
                        {
                           addr0070:
                           §§push(§§newactivation());
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr009a);
               }
               addr008b:
               §§push(§§pop().§§slot[1]);
               if(!(_loc3_ && _loc2_))
               {
                  addr009c:
                  §§pop()[1] = new Binding(this,function():uint
                  {
                     return ImprovementReplacementMiniLayerMediator.LINE_ID_0;
                  },null,"uiInfolayerAlignmentLine.lineId");
                  addr00af:
                  addr00ad:
                  §§push(result);
                  addr009a:
               }
               return §§pop();
            }
            §§goto(addr0070);
         }
         §§goto(addr00af);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get leftButton() : MultistateButton
      {
         return this._1632457241leftButton;
      }
      
      public function set leftButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1632457241leftButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003f:
                  this._1632457241leftButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftButton",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovement() : BriskImageDynaLib
      {
         return this._305571606newImprovement;
      }
      
      public function set newImprovement(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._305571606newImprovement;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._305571606newImprovement = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovement",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovementBackground() : BriskImageDynaLib
      {
         return this._1784902884newImprovementBackground;
      }
      
      public function set newImprovementBackground(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1784902884newImprovementBackground;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1784902884newImprovementBackground = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0066);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovementBackground",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovementBadge() : BriskImageDynaLib
      {
         return this._36962861newImprovementBadge;
      }
      
      public function set newImprovementBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._36962861newImprovementBadge;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._36962861newImprovementBadge = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0049);
                  }
                  §§goto(addr0060);
               }
               addr0049:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0060:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovementBadge",_loc2_,param1));
                  }
               }
               §§goto(addr006f);
            }
         }
         addr006f:
      }
      
      [Bindable(event="propertyChange")]
      public function get newImprovementGroup() : Group
      {
         return this._42097929newImprovementGroup;
      }
      
      public function set newImprovementGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._42097929newImprovementGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._42097929newImprovementGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newImprovementGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get oldImprovement() : BriskImageDynaLib
      {
         return this._411412433oldImprovement;
      }
      
      public function set oldImprovement(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._411412433oldImprovement;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._411412433oldImprovement = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovement",_loc2_,param1));
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
      public function get oldImprovementBackground() : BriskImageDynaLib
      {
         return this._1909676733oldImprovementBackground;
      }
      
      public function set oldImprovementBackground(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1909676733oldImprovementBackground;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1909676733oldImprovementBackground = param1;
                  addr0042:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovementBackground",_loc2_,param1));
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
      public function get oldImprovementBadge() : BriskImageDynaLib
      {
         return this._859838644oldImprovementBadge;
      }
      
      public function set oldImprovementBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._859838644oldImprovementBadge;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._859838644oldImprovementBadge = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovementBadge",_loc2_,param1));
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
      public function get oldImprovementGroup() : Group
      {
         return this._864973712oldImprovementGroup;
      }
      
      public function set oldImprovementGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._864973712oldImprovementGroup;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._864973712oldImprovementGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldImprovementGroup",_loc2_,param1));
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
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get replaceButton() : MultistateButton
      {
         return this._580382470replaceButton;
      }
      
      public function set replaceButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._580382470replaceButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._580382470replaceButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007d);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr007d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"replaceButton",_loc2_,param1));
                  }
               }
               §§goto(addr008c);
            }
         }
         addr008c:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
   }
}

