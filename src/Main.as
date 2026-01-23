package
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
   import mx.core.LayoutDirection;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.filters.*;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.view.tooltip.HTMLTooltip;
   
   use namespace mx_internal;
   
   public class Main extends MainApplication implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _skinParts = {
            "controlBarGroup":false,
            "contentGroup":false
         };
      }
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _Main_StylesInit_done:Boolean = false;
      
      private var _embed__font_ArialBlack_medium_normal_1848406807:Class;
      
      private var _embed__font_Arial_medium_normal_170429799:Class;
      
      private var _embed__font_ArialBold_medium_normal_880151399:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function Main()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_ || _loc2_)
         {
            §§push(null);
            if(_loc3_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr004f:
                     §§pop().§§slot[5] = null;
                     if(_loc3_ || _loc1_)
                     {
                        this._embed__font_ArialBlack_medium_normal_1848406807 = Main__embed__font_ArialBlack_medium_normal_1848406807;
                        if(!_loc4_)
                        {
                           this._embed__font_Arial_medium_normal_170429799 = Main__embed__font_Arial_medium_normal_170429799;
                           if(!_loc4_)
                           {
                              this._embed__font_ArialBold_medium_normal_880151399 = Main__embed__font_ArialBold_medium_normal_880151399;
                              if(_loc3_ || _loc2_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_ || _loc2_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_)
                                       {
                                          addr00ba:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._Main_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr0118:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr012b:
                                                               §§push(§§newactivation());
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     addr014c:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr0164:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              addr0174:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_MainWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0188:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr018f:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       addr01ad:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return Main[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr01cf:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr01fe:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr0225:
                                                                                                this.minWidth = 300;
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   this.addEventListener("initialize",this.___Main_MainApplication1_initialize);
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      addr0252:
                                                                                                      this.addEventListener("applicationComplete",this.___Main_MainApplication1_applicationComplete);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr0266:
                                                                                                         i = 0;
                                                                                                         addr0264:
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
                                                                                                                  if(_loc4_ && Boolean(this))
                                                                                                                  {
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc3_ || _loc1_))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        var _temp_26:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_26;
                                                                                                                        if(_loc3_ || Boolean(this))
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            break loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      return;
                                                                                                      addr02d1:
                                                                                                   }
                                                                                                   §§goto(addr0264);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0252);
                                                                                       }
                                                                                       §§goto(addr02d1);
                                                                                    }
                                                                                    §§goto(addr01cf);
                                                                                 }
                                                                                 §§goto(addr0266);
                                                                              }
                                                                              §§goto(addr0225);
                                                                           }
                                                                           §§goto(addr018f);
                                                                        }
                                                                        §§goto(addr0188);
                                                                     }
                                                                     §§goto(addr01ad);
                                                                  }
                                                                  §§goto(addr01fe);
                                                               }
                                                               §§goto(addr0266);
                                                            }
                                                            §§goto(addr01cf);
                                                         }
                                                         §§goto(addr0266);
                                                      }
                                                      §§goto(addr0188);
                                                   }
                                                   §§goto(addr0174);
                                                }
                                                §§goto(addr0188);
                                             }
                                             §§goto(addr01fe);
                                          }
                                          §§goto(addr0164);
                                       }
                                       §§goto(addr01fe);
                                    }
                                    §§goto(addr02d1);
                                 }
                                 §§goto(addr014c);
                              }
                              §§goto(addr01cf);
                           }
                           §§goto(addr01fe);
                        }
                        §§goto(addr0264);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr0174);
               }
               §§goto(addr012b);
            }
            §§goto(addr004f);
         }
         §§goto(addr0118);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            Main._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super.moduleFactory = param1;
            if(_loc4_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc4_)
                  {
                     §§goto(addr003f);
                  }
               }
               else
               {
                  addr005a:
                  this.__moduleFactoryInitialized = true;
                  if(_loc4_)
                  {
                     mx_internal::_Main_StylesInit();
                  }
               }
               return;
            }
            §§goto(addr005a);
         }
         addr003f:
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
      
      private function onInitialize(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            ToolTipManager.toolTipClass = HTMLTooltip;
         }
      }
      
      private function applicationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      public function ___Main_MainApplication1_initialize(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.onInitialize(param1);
         }
      }
      
      public function ___Main_MainApplication1_applicationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.applicationCompleteHandler(param1);
         }
      }
      
      private function _Main_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || Boolean(this))
            {
               §§push(§§newactivation());
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0063);
               }
               §§goto(addr0086);
            }
            §§goto(addr0084);
         }
         addr0063:
         §§push(§§pop().§§slot[1]);
         if(!(_loc2_ && _loc3_))
         {
            §§pop()[0] = new Binding(this,function():String
            {
               var _loc1_:* = LayoutDirection.LTR;
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"this.layoutDirection");
            addr0086:
            addr0084:
            return result;
         }
      }
      
      mx_internal function _Main_StylesInit() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 82456
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}

