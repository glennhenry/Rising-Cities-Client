package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Expo;
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
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.ChallengeBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class ChallengeBarComponent extends Group implements IBindingClient
   {
      
      public static const UPSELL_GOOD:String = "UPSELL_GOOD";
      
      public static const OPEN_PAYMENT:String = "OPEN_PAYMENT";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         UPSELL_GOOD = "UPSELL_GOOD";
         if(!(_loc2_ && _loc1_))
         {
            OPEN_PAYMENT = "OPEN_PAYMENT";
         }
      }
      
      private var _97299bar:HGroup;
      
      private var _1396262968barEnd:BriskImageDynaLib;
      
      private var _334036562barTint:HGroup;
      
      private var _1089021804eventStepProgressBarLabel:LocaLabel;
      
      private var _1240248862goodBg:BriskImageDynaLib;
      
      private var _273241018mainGroup:Group;
      
      private var _1565735381movingGood:BriskImageDynaLib;
      
      private var _1440572180movingGoodGroup:HGroup;
      
      private var _937542070rcIcon:BriskImageDynaLib;
      
      private var _110699445staticGood:BriskImageDynaLib;
      
      private var _74854140staticTargetGood:BriskImageDynaLib;
      
      private var _2040933149staticTargetGoodGroup:Group;
      
      private var _2141414911upsellButton:DynamicPlusButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var barPercentWidth:Number = 0;
      
      private var _animationIsPlaying:Boolean;
      
      private var _progressText:String = "";
      
      private var _upsellText:String = "";
      
      private var _progress:Number;
      
      private var _animationTween:TweenMax;
      
      private var _data:ChallengeBarVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ChallengeBarComponent()
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
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0040:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || _loc1_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0070:
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc1_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._ChallengeBarComponent_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                addr00c9:
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      addr00ec:
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr010d:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr0122:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_ChallengeBarComponentWatcherSetupUtil");
                                                                     addr0131:
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           addr0161:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              addr017f:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ChallengeBarComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01cb:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.percentHeight = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.percentWidth = 100;
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr0208:
                                                                                             this.mxmlContent = [this._ChallengeBarComponent_HGroup1_c()];
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr0221:
                                                                                                this.addEventListener("creationComplete",this.___ChallengeBarComponent_Group1_creationComplete);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0234:
                                                                                                   i = 0;
                                                                                                   addr0232:
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
                                                                                                            if(!(_loc4_ || Boolean(this)))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  var _temp_26:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_26;
                                                                                                                  if(_loc4_ || Boolean(this))
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
                                                                                                addr02ad:
                                                                                             }
                                                                                             §§goto(addr0232);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0221);
                                                                                 }
                                                                                 §§goto(addr0232);
                                                                              }
                                                                              §§goto(addr0208);
                                                                           }
                                                                           §§goto(addr02ad);
                                                                        }
                                                                        §§goto(addr0234);
                                                                     }
                                                                     §§goto(addr02ad);
                                                                  }
                                                                  §§goto(addr0161);
                                                               }
                                                            }
                                                            §§goto(addr017f);
                                                         }
                                                         §§goto(addr01cb);
                                                      }
                                                      §§goto(addr0234);
                                                   }
                                                   §§goto(addr017f);
                                                }
                                                §§goto(addr0161);
                                             }
                                             §§goto(addr0232);
                                          }
                                          §§goto(addr0234);
                                       }
                                       §§goto(addr0232);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr010d);
                           }
                           §§goto(addr0122);
                        }
                        §§goto(addr01cb);
                     }
                     §§goto(addr0208);
                  }
                  §§goto(addr0234);
               }
               §§goto(addr0070);
            }
            §§goto(addr0040);
         }
         §§goto(addr0131);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            ChallengeBarComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr004c);
                  }
               }
               §§goto(addr0052);
            }
            addr004c:
            return;
         }
         addr0052:
         this.__moduleFactoryInitialized = true;
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         if(_loc3_)
         {
            if(getStyle("tint") == null)
            {
               if(_loc3_)
               {
                  §§push(53236);
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        addr007a:
                        TweenMax.to(this.barTint,0,{"tint":_loc2_});
                     }
                  }
                  else
                  {
                     addr006c:
                     _loc2_ = §§pop();
                     if(_loc3_ || Boolean(param1))
                     {
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007a);
            }
            else
            {
               §§push(getStyle("tint") as uint);
            }
            §§goto(addr006c);
         }
         addr008c:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._dataIsDirty);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!_loc2_)
                        {
                           addr0040:
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._data);
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    §§goto(addr005d);
                                 }
                                 §§goto(addr0077);
                              }
                              §§goto(addr0074);
                           }
                           §§goto(addr0398);
                        }
                        §§goto(addr0077);
                     }
                     addr005d:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this._dataIsDirty = false;
                           if(_loc1_)
                           {
                              addr0077:
                              addr0074:
                              if(this._data.isEventGood)
                              {
                                 if(_loc1_ || Boolean(this))
                                 {
                                    §§push(this.goodBg);
                                    if(!_loc2_)
                                    {
                                       §§push("eventgood_cardboard_mini");
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§pop().dynaBmpSourceName = §§pop();
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§push(this.movingGood);
                                             if(!_loc2_)
                                             {
                                                §§push(this._data);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().eventGFXId);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§pop().dynaSWFFileName = §§pop().toString();
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.movingGood);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push("small_");
                                                            if(!_loc2_)
                                                            {
                                                               §§push(this._data);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop().goodGFXId);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        addr0116:
                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                        if(_loc1_)
                                                                        {
                                                                           §§push(this.movingGood);
                                                                           if(_loc1_)
                                                                           {
                                                                              addr012d:
                                                                              addr012a:
                                                                              §§push(this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons");
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§pop().dynaLibName = §§pop();
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    §§push(this.staticGood);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§push(this._data);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(§§pop().eventGFXId);
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §§pop().dynaSWFFileName = §§pop().toString();
                                                                                             if(_loc1_ || Boolean(this))
                                                                                             {
                                                                                                addr017f:
                                                                                                §§push(this.staticGood);
                                                                                                if(!(_loc2_ && _loc1_))
                                                                                                {
                                                                                                   addr0197:
                                                                                                   addr0194:
                                                                                                   §§push(this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons");
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §§pop().dynaLibName = §§pop();
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         §§push(this.staticGood);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            §§push("small_");
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               §§push(this._data);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop().goodGFXId);
                                                                                                                  if(_loc1_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                                                                        if(_loc2_ && _loc1_)
                                                                                                                        {
                                                                                                                           addr021a:
                                                                                                                           §§push(this.movingGood);
                                                                                                                           if(_loc1_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr022b:
                                                                                                                              §§push("gui_popups_smallGoodIcons");
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 addr0233:
                                                                                                                                 §§pop().dynaLibName = §§pop();
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    addr023e:
                                                                                                                                    addr023a:
                                                                                                                                    §§push(this.movingGood);
                                                                                                                                    §§push("small_");
                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr024e:
                                                                                                                                       addr0255:
                                                                                                                                       addr0252:
                                                                                                                                       §§push(§§pop() + this._data.goodGFXId);
                                                                                                                                    }
                                                                                                                                    §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                    if(_loc1_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       addr026c:
                                                                                                                                       this.goodBg.dynaBmpSourceName = "ressource_cardboard_mini";
                                                                                                                                       addr0269:
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(this.staticGood);
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().dynaSWFFileName = null;
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                addr028d:
                                                                                                                                                §§push(this.staticGood);
                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   addr029e:
                                                                                                                                                   §§push("gui_popups_smallGoodIcons");
                                                                                                                                                   if(_loc1_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr02ae:
                                                                                                                                                      §§pop().dynaLibName = §§pop();
                                                                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr02d1:
                                                                                                                                                         addr02c1:
                                                                                                                                                         addr02bd:
                                                                                                                                                         §§push(this.staticGood);
                                                                                                                                                         §§push("small_");
                                                                                                                                                         if(_loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr02c9:
                                                                                                                                                            addr02d0:
                                                                                                                                                            addr02cd:
                                                                                                                                                            §§push(§§pop() + this._data.goodGFXId);
                                                                                                                                                         }
                                                                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr02d8:
                                                                                                                                                            §§push(this.upsellButton);
                                                                                                                                                            if(_loc1_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this._data);
                                                                                                                                                               if(_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().currentValue < this._data.maxValue);
                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     var _temp_24:* = §§pop();
                                                                                                                                                                     §§push(_temp_24);
                                                                                                                                                                     if(_temp_24)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(_loc1_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this._data);
                                                                                                                                                                              if(_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().upsellingPrice);
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > 0);
                                                                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr033b:
                                                                                                                                                                                       §§pop().enabled = §§pop();
                                                                                                                                                                                       if(!(_loc2_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr034b:
                                                                                                                                                                                          §§push(this.upsellButton);
                                                                                                                                                                                          if(_loc1_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop().enabled)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0368:
                                                                                                                                                                                                   §§push(this.upsellButton);
                                                                                                                                                                                                   if(_loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this._data);
                                                                                                                                                                                                      if(_loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr037a:
                                                                                                                                                                                                         §§push(§§pop().upsellingAffordable);
                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            if(_loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr0388);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr03ba);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr03df);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr03db);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr041b);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.upsellButton);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr03f2);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0398);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03f3);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03e2);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr037a);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03f2);
                                                                                                                                                                        }
                                                                                                                                                                        addr0388:
                                                                                                                                                                        §§pop().showPlus = §§pop();
                                                                                                                                                                        if(_loc1_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           addr0398:
                                                                                                                                                                           §§push(this.upsellButton);
                                                                                                                                                                           if(_loc1_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this._data);
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().upsellingAffordable);
                                                                                                                                                                                 if(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03ba:
                                                                                                                                                                                    §§pop().showSparkle = §§pop();
                                                                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03ca:
                                                                                                                                                                                       §§push(this.upsellButton);
                                                                                                                                                                                       if(!(_loc2_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03e2:
                                                                                                                                                                                          §§pop().priceToConfirm = this._data.upsellingPrice;
                                                                                                                                                                                          addr03df:
                                                                                                                                                                                          addr03db:
                                                                                                                                                                                          if(_loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr040d);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr041b);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03f3:
                                                                                                                                                                                          §§pop().showSparkle = false;
                                                                                                                                                                                          addr03f2:
                                                                                                                                                                                          if(_loc1_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr040d);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr042d);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03f3);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03df);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03db);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr040d);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr033b);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr037a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03f2);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr041b);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0368);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02d1);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02c1);
                                                                                                                                             }
                                                                                                                                             §§goto(addr034b);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02c1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02d8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02bd);
                                                                                                                                 }
                                                                                                                                 §§goto(addr028d);
                                                                                                                              }
                                                                                                                              §§goto(addr024e);
                                                                                                                           }
                                                                                                                           §§goto(addr023e);
                                                                                                                        }
                                                                                                                        §§goto(addr02d8);
                                                                                                                     }
                                                                                                                     §§goto(addr02c9);
                                                                                                                  }
                                                                                                                  §§goto(addr02d0);
                                                                                                               }
                                                                                                               §§goto(addr02cd);
                                                                                                            }
                                                                                                            §§goto(addr02ae);
                                                                                                         }
                                                                                                         §§goto(addr02c1);
                                                                                                      }
                                                                                                      §§goto(addr0398);
                                                                                                   }
                                                                                                   §§goto(addr02c9);
                                                                                                }
                                                                                                §§goto(addr029e);
                                                                                             }
                                                                                             §§goto(addr041b);
                                                                                          }
                                                                                          §§goto(addr0197);
                                                                                       }
                                                                                       §§goto(addr0194);
                                                                                    }
                                                                                    §§goto(addr02c1);
                                                                                 }
                                                                                 §§goto(addr021a);
                                                                              }
                                                                              §§goto(addr0233);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01ff:
                                                                              §§pop().dynaSWFFileName = null;
                                                                              if(_loc1_ || Boolean(this))
                                                                              {
                                                                                 §§goto(addr021a);
                                                                              }
                                                                           }
                                                                           §§goto(addr042d);
                                                                        }
                                                                        §§goto(addr034b);
                                                                     }
                                                                     §§goto(addr024e);
                                                                  }
                                                                  §§goto(addr0255);
                                                               }
                                                               §§goto(addr0252);
                                                            }
                                                            §§goto(addr0116);
                                                         }
                                                         §§goto(addr022b);
                                                      }
                                                      §§goto(addr02d8);
                                                   }
                                                   §§goto(addr012d);
                                                }
                                                §§goto(addr012a);
                                             }
                                             §§goto(addr01ff);
                                          }
                                          addr040d:
                                          this._progress = this.progress;
                                          if(_loc1_)
                                          {
                                             addr041b:
                                             this.updateBar();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr042d:
                                                this.setToolTips();
                                             }
                                          }
                                          §§goto(addr0433);
                                       }
                                       §§goto(addr026c);
                                    }
                                    §§goto(addr0269);
                                 }
                                 §§goto(addr03ca);
                              }
                              else
                              {
                                 §§push(this.movingGood);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr01ff);
                                 }
                              }
                              §§goto(addr023e);
                           }
                           §§goto(addr0433);
                        }
                        §§goto(addr017f);
                     }
                     addr0433:
                     return;
                  }
                  §§goto(addr0040);
               }
               §§goto(addr0077);
            }
            §§goto(addr0398);
         }
         §§goto(addr023a);
      }
      
      private function setToolTips() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_loc5_)
         {
            if(this._data.isEventGood)
            {
               if(_loc5_)
               {
                  addr0034:
                  §§push(LocaUtils);
                  §§push("rcl.citysquarequests.");
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§push(§§pop() + this._data.eventLocalId);
                  }
                  §§push("rcl.citysquarequests.");
                  if(_loc5_ || _loc3_)
                  {
                     §§push(this._data);
                     if(!_loc4_)
                     {
                        §§push(§§pop().eventLocalId);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              §§push(§§pop() + ".goods.goodname.");
                              if(_loc5_)
                              {
                                 addr008c:
                                 addr0093:
                                 addr0090:
                                 §§push(§§pop() + this._data.goodLocaleId);
                              }
                              §§push(§§pop().getString(§§pop(),§§pop()));
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    _loc1_ = §§pop();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(LocaUtils);
                                       §§push("rcl.citysquarequests.");
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + this._data.eventLocalId);
                                       }
                                       §§push("rcl.citysquarequests.");
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          §§push(this._data);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop().eventLocalId);
                                             if(!(_loc4_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§push(§§pop() + ".goods.tooltip.");
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr0126:
                                                      addr012d:
                                                      addr012a:
                                                      §§push(§§pop() + this._data.goodLocaleId);
                                                   }
                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                   if(_loc5_ || Boolean(_loc2_))
                                                   {
                                                      §§goto(addr013f);
                                                   }
                                                   §§goto(addr01a1);
                                                }
                                                §§goto(addr0126);
                                             }
                                             §§goto(addr012d);
                                          }
                                          §§goto(addr012a);
                                       }
                                       §§goto(addr0126);
                                    }
                                    §§goto(addr01b1);
                                 }
                                 §§goto(addr01a2);
                              }
                              addr013f:
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr01b1);
                                 }
                                 §§goto(addr01f8);
                              }
                              else
                              {
                                 addr01a2:
                                 _loc2_ = §§pop();
                                 addr01a1:
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    addr01b1:
                                    this.movingGood.toolTip = this.staticGood.toolTip = _loc2_;
                                    if(!_loc4_)
                                    {
                                       this.staticTargetGoodGroup.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.emptybox",[_loc1_]);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr01f8:
                                          this.upsellButton.toolTip = LocaUtils.getString(String("rcl.citysquare.popup.runningevent"),String("rcl.citysquare.popup.runningevent.upselling.tooltip"));
                                       }
                                    }
                                    §§goto(addr0214);
                                 }
                              }
                              addr0214:
                              return;
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr01b1);
            }
            else
            {
               §§push(LocaUtils);
               §§push("rcl.goods.goodname");
               §§push("rcl.goods.goodname.");
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  §§push(§§pop() + this._data.goodLocaleId);
               }
               §§push(§§pop().getString(§§pop(),§§pop()));
               if(_loc5_)
               {
                  var _loc3_:* = §§pop();
                  §§push(_loc3_);
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§push(§§pop());
                     if(_loc5_ || _loc3_)
                     {
                        addr0197:
                        _loc1_ = §§pop();
                        §§push(_loc3_);
                     }
                     if(_loc5_)
                     {
                        §§goto(addr01a1);
                     }
                     §§goto(addr01a2);
                  }
                  §§goto(addr0197);
               }
            }
            §§goto(addr01a2);
         }
         §§goto(addr0034);
      }
      
      private function animationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._animationIsPlaying = false;
         }
      }
      
      private function updateBar() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(this._progress);
            if(!(_loc2_ && _loc2_))
            {
               §§push(0);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc2_)
                     {
                        var _temp_4:* = this.bar;
                        var _loc1_:*;
                        this.barTint.visible = _loc1_ = false;
                        _temp_4.visible = _loc1_;
                        if(_loc3_)
                        {
                           §§push(this.eventStepProgressBarLabel);
                           if(_loc3_)
                           {
                              §§push("color");
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(8092539);
                                 if(!_loc2_)
                                 {
                                    §§pop().setStyle(§§pop(),§§pop());
                                    if(_loc3_ || _loc1_)
                                    {
                                       var _temp_7:* = this.movingGoodGroup;
                                       this.movingGoodGroup.includeInLayout = _loc1_ = false;
                                       _temp_7.visible = _loc1_;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(this.staticGood);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(1);
                                             if(_loc3_)
                                             {
                                                §§pop().alpha = §§pop();
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§push(this.staticGood);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this._data);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§push(§§pop().isEventGood);
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this._data);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop().eventGFXId);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop().toString());
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr013d:
                                                                           §§pop().dynaSWFFileName = §§pop();
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.staticGood);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr014e:
                                                                                 §§push(this._data);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr0157:
                                                                                    §§push(§§pop().isEventGood);
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(this._data);
                                                                                             if(!(_loc2_ && _loc1_))
                                                                                             {
                                                                                                §§push(§§pop().eventGFXId);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr0189:
                                                                                                   §§push(§§pop().toString() + "_gui_popups_smallGoodIcons");
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      addr01aa:
                                                                                                      §§pop().dynaLibName = §§pop();
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         addr01b9:
                                                                                                         §§push(this.staticGood);
                                                                                                         if(_loc3_ || _loc1_)
                                                                                                         {
                                                                                                            §§push("small_");
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(this._data);
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(§§pop().goodGFXId);
                                                                                                                  if(!(_loc2_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr0201:
                                                                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.staticGood);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.staticGood);
                                                                                                                              if(_loc3_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 if(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    var _temp_26:* = §§pop();
                                                                                                                                    §§push(_temp_26);
                                                                                                                                    §§push(_temp_26);
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       if(_loc3_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr0270:
                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.staticTargetGood);
                                                                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.staticTargetGood);
                                                                                                                                                         if(_loc3_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               var _temp_34:* = §§pop();
                                                                                                                                                               §§push(_temp_34);
                                                                                                                                                               §§push(_temp_34);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().visible = §§pop();
                                                                                                                                                                     if(_loc3_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().includeInLayout = §§pop();
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr037f:
                                                                                                                                                                                 §§push(this.staticGood);
                                                                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0390:
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                    if(!(_loc2_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr039f:
                                                                                                                                                                                       §§pop().alpha = §§pop();
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.staticGood);
                                                                                                                                                                                          if(!(_loc2_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03b8:
                                                                                                                                                                                             §§push(this.staticGood);
                                                                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03cf:
                                                                                                                                                                                                   var _temp_41:* = §§pop();
                                                                                                                                                                                                   §§push(_temp_41);
                                                                                                                                                                                                   §§push(_temp_41);
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03d5:
                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr03ea:
                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.staticGood);
                                                                                                                                                                                                                     if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0417:
                                                                                                                                                                                                                        §§push("gui_ui_questSide");
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr041f:
                                                                                                                                                                                                                           §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.staticGood);
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push("quest51006");
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr044b:
                                                                                                                                                                                                                                    §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                                                    if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.staticTargetGoodGroup.toolTip = LocaUtils.getString(String("rcl.citysquare.popup.tooltips"),String("rcl.citysquare.popup.tooltips.fullbox"));
                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr047b:
                                                                                                                                                                                                                                          §§push(this._data.isEventGood);
                                                                                                                                                                                                                                          if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr04a0:
                                                                                                                                                                                                                                                   §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this._data);
                                                                                                                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().eventGFXId);
                                                                                                                                                                                                                                                         if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().dynaSWFFileName = §§pop().toString();
                                                                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr04de:
                                                                                                                                                                                                                                                               §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr04f6:
                                                                                                                                                                                                                                                                  addr04f3:
                                                                                                                                                                                                                                                                  §§push(this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons");
                                                                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                                        if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr051b:
                                                                                                                                                                                                                                                                           §§push("small_");
                                                                                                                                                                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this._data);
                                                                                                                                                                                                                                                                              if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().goodGFXId);
                                                                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr05e7:
                                                                                                                                                                                                                                                                                          §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr05f0:
                                                                                                                                                                                                                                                                                             §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0601:
                                                                                                                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr060f:
                                                                                                                                                                                                                                                                                                   var _temp_60:* = §§pop();
                                                                                                                                                                                                                                                                                                   §§push(_temp_60);
                                                                                                                                                                                                                                                                                                   §§push(_temp_60);
                                                                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr0623:
                                                                                                                                                                                                                                                                                                         §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr062a:
                                                                                                                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr063f:
                                                                                                                                                                                                                                                                                                                  §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr084c:
                                                                                                                                                                                                                                                                                                                     §§push(this.staticGood);
                                                                                                                                                                                                                                                                                                                     this.staticGood.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                                                                                                     addr085c:
                                                                                                                                                                                                                                                                                                                     §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                                     addr084f:
                                                                                                                                                                                                                                                                                                                     addr084e:
                                                                                                                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr086e:
                                                                                                                                                                                                                                                                                                                        §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                                                                                        this.staticTargetGood.visible = _loc1_ = false;
                                                                                                                                                                                                                                                                                                                        addr0873:
                                                                                                                                                                                                                                                                                                                        §§pop().includeInLayout = _loc1_;
                                                                                                                                                                                                                                                                                                                        addr0871:
                                                                                                                                                                                                                                                                                                                        addr0870:
                                                                                                                                                                                                                                                                                                                        if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr0882:
                                                                                                                                                                                                                                                                                                                           this.setProgressBarLabelText();
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr0888:
                                                                                                                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                                                                                                                        addr086d:
                                                                                                                                                                                                                                                                                                                        addr086c:
                                                                                                                                                                                                                                                                                                                        addr086b:
                                                                                                                                                                                                                                                                                                                        addr0867:
                                                                                                                                                                                                                                                                                                                        addr0863:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr0841:
                                                                                                                                                                                                                                                                                                                     addr0845:
                                                                                                                                                                                                                                                                                                                     addr084b:
                                                                                                                                                                                                                                                                                                                     addr084a:
                                                                                                                                                                                                                                                                                                                     addr0849:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr0882);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr0873);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0871);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr0870);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr086e);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr086d);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr086c);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr086b);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0867);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr0728:
                                                                                                                                                                                                                                                                                          this.eventStepProgressBarLabel.setStyle("color",8092539);
                                                                                                                                                                                                                                                                                          addr071f:
                                                                                                                                                                                                                                                                                          addr0723:
                                                                                                                                                                                                                                                                                          addr0726:
                                                                                                                                                                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr0738:
                                                                                                                                                                                                                                                                                             §§push(this.staticGood);
                                                                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0741:
                                                                                                                                                                                                                                                                                                §§pop().alpha = 0.5;
                                                                                                                                                                                                                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr0753:
                                                                                                                                                                                                                                                                                                   §§push(this.staticGood);
                                                                                                                                                                                                                                                                                                   if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this._data);
                                                                                                                                                                                                                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().isEventGood);
                                                                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr077d:
                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this._data);
                                                                                                                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr078f:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop().eventGFXId);
                                                                                                                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().toString());
                                                                                                                                                                                                                                                                                                                        if(_loc2_ && _loc1_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr07af:
                                                                                                                                                                                                                                                                                                                        §§pop().dynaSWFFileName = §§pop();
                                                                                                                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr07b7:
                                                                                                                                                                                                                                                                                                                           §§push(this.staticGood);
                                                                                                                                                                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr07c0:
                                                                                                                                                                                                                                                                                                                              §§push(this._data);
                                                                                                                                                                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr07c9:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop().isEventGood);
                                                                                                                                                                                                                                                                                                                                 if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr07d9:
                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr07e6:
                                                                                                                                                                                                                                                                                                                                          addr07e9:
                                                                                                                                                                                                                                                                                                                                          addr07e2:
                                                                                                                                                                                                                                                                                                                                          §§push(this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons");
                                                                                                                                                                                                                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr0812:
                                                                                                                                                                                                                                                                                                                                             §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr0821:
                                                                                                                                                                                                                                                                                                                                                §§push(this.staticGood);
                                                                                                                                                                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr083a:
                                                                                                                                                                                                                                                                                                                                                   addr082a:
                                                                                                                                                                                                                                                                                                                                                   §§push("small_");
                                                                                                                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr0832:
                                                                                                                                                                                                                                                                                                                                                      addr0839:
                                                                                                                                                                                                                                                                                                                                                      addr0836:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + this._data.goodGFXId);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0841);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0882);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0845);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0882);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr083a);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr082a);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push("gui_popups_smallGoodIcons");
                                                                                                                                                                                                                                                                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr0812);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr083a);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr085c);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr07e6);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0845);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr0882);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr07e9);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr07e6);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr07e2);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr07ae:
                                                                                                                                                                                                                                                                                                               §§push(null);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr07af);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr085c);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr07c9);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0845);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0821);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr07e2);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr0888);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr05d8:
                                                                                                                                                                                                                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr05e7);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr06ac:
                                                                                                                                                                                                                                                                                          this._animationTween = TweenMax.to(this,1,{
                                                                                                                                                                                                                                                                                             "barPercentWidth":Math.floor(this._progress * 100),
                                                                                                                                                                                                                                                                                             "onComplete":this.animationComplete,
                                                                                                                                                                                                                                                                                             "onUpdate":this.onAnimationUpdate,
                                                                                                                                                                                                                                                                                             "ease":Expo.easeOut
                                                                                                                                                                                                                                                                                          });
                                                                                                                                                                                                                                                                                          if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr06f1:
                                                                                                                                                                                                                                                                                             var _temp_75:* = this.bar;
                                                                                                                                                                                                                                                                                             this.barTint.visible = _loc1_ = true;
                                                                                                                                                                                                                                                                                             _temp_75.visible = _loc1_;
                                                                                                                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr0708:
                                                                                                                                                                                                                                                                                                var _temp_76:* = this.movingGoodGroup;
                                                                                                                                                                                                                                                                                                this.movingGoodGroup.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                                                                                _temp_76.visible = _loc1_;
                                                                                                                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr071f);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0738);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr071f);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr05e7);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr05d7:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr05d8);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr05d4:
                                                                                                                                                                                                                                                                                 §§push(§§pop().goodGFXId);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr05d7);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr05d0:
                                                                                                                                                                                                                                                                              §§push(this._data);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr05d4);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0590:
                                                                                                                                                                                                                                                                           §§push("gui_popups_smallGoodIcons");
                                                                                                                                                                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr05a0:
                                                                                                                                                                                                                                                                              §§pop().dynaLibName = §§pop();
                                                                                                                                                                                                                                                                              if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr05c0:
                                                                                                                                                                                                                                                                                    §§push("small_");
                                                                                                                                                                                                                                                                                    if(_loc3_ || _loc1_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr05d0);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr05d8);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr05f0);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr06f1);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr05d0);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr071f);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr05a0);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0867);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr06f1);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr04f6);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr04f3);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr051b);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0821);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().dynaSWFFileName = null;
                                                                                                                                                                                                                                                   if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr057f:
                                                                                                                                                                                                                                                      §§push(this.staticTargetGood);
                                                                                                                                                                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr0590);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr05c0);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr07b7);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0867);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr0699:
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this._animationIsPlaying = true;
                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr06ac);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0738);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr071f);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr06f1);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0753);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0708);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr083a);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr07c0);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0882);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0832);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0741);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr047b);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr077d);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr084f);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr084e);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr084c);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr084b);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr084a);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0849);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0417);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0888);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr07e9);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr07e2);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0882);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr063f);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0871);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr062a);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0623);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr086d);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr060f);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0601);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0867);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr047b);
                                                                                                                                                }
                                                                                                                                                §§goto(addr07d9);
                                                                                                                                             }
                                                                                                                                             §§goto(addr084f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03ea);
                                                                                                                                       }
                                                                                                                                       §§goto(addr084c);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03d5);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03cf);
                                                                                                                              }
                                                                                                                              §§goto(addr0849);
                                                                                                                           }
                                                                                                                           §§goto(addr0390);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0348:
                                                                                                                           var _temp_83:* = this.movingGoodGroup;
                                                                                                                           this.movingGoodGroup.includeInLayout = _loc1_ = false;
                                                                                                                           _temp_83.visible = _loc1_;
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              this.bar.visible = true;
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 this.barTint.visible = true;
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr037f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0863);
                                                                                                                              }
                                                                                                                              §§goto(addr057f);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr037f);
                                                                                                                     }
                                                                                                                     §§goto(addr041f);
                                                                                                                  }
                                                                                                                  §§goto(addr0839);
                                                                                                               }
                                                                                                               §§goto(addr0836);
                                                                                                            }
                                                                                                            §§goto(addr044b);
                                                                                                         }
                                                                                                         §§goto(addr03b8);
                                                                                                      }
                                                                                                      §§goto(addr04de);
                                                                                                   }
                                                                                                   §§goto(addr0201);
                                                                                                }
                                                                                                §§goto(addr039f);
                                                                                             }
                                                                                             §§goto(addr078f);
                                                                                          }
                                                                                          §§goto(addr0390);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("gui_popups_smallGoodIcons");
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr01aa);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0832);
                                                                                    }
                                                                                    §§goto(addr0270);
                                                                                 }
                                                                                 §§goto(addr07e6);
                                                                              }
                                                                              §§goto(addr0741);
                                                                           }
                                                                           §§goto(addr01b9);
                                                                        }
                                                                        §§goto(addr07af);
                                                                     }
                                                                     §§goto(addr07e9);
                                                                  }
                                                                  §§goto(addr0157);
                                                               }
                                                               §§goto(addr014e);
                                                            }
                                                            else
                                                            {
                                                               §§push(null);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§goto(addr013d);
                                                                  }
                                                                  §§goto(addr07af);
                                                               }
                                                            }
                                                            §§goto(addr07ae);
                                                         }
                                                         §§goto(addr07d9);
                                                      }
                                                      §§goto(addr07c9);
                                                   }
                                                   §§goto(addr0845);
                                                }
                                                §§goto(addr01b9);
                                             }
                                             §§goto(addr0189);
                                          }
                                          §§goto(addr0390);
                                       }
                                       §§goto(addr0348);
                                    }
                                    §§goto(addr05e7);
                                 }
                              }
                              else
                              {
                                 addr0330:
                                 §§push(4302010);
                                 if(_loc3_)
                                 {
                                    §§pop().setStyle(§§pop(),§§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr0348);
                                    }
                                    §§goto(addr0863);
                                 }
                              }
                              §§goto(addr0728);
                           }
                           §§goto(addr0723);
                        }
                        §§goto(addr047b);
                     }
                     §§goto(addr0841);
                  }
                  else
                  {
                     addr02f0:
                     addr02ee:
                     if(this._progress == 1)
                     {
                        if(_loc3_)
                        {
                           this.barPercentWidth = 100;
                           if(_loc3_ || _loc3_)
                           {
                              this.onAnimationUpdate();
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(this.eventStepProgressBarLabel);
                                 if(!_loc2_)
                                 {
                                    §§push("color");
                                    if(_loc3_)
                                    {
                                       §§goto(addr0330);
                                    }
                                    §§goto(addr0726);
                                 }
                                 §§goto(addr0723);
                              }
                              §§goto(addr0821);
                           }
                           §§goto(addr04a0);
                        }
                        §§goto(addr0348);
                     }
                     else
                     {
                        §§push(this._animationIsPlaying);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(!§§pop());
                           if(!(_loc2_ && Boolean(this)))
                           {
                              var _temp_90:* = §§pop();
                              §§push(_temp_90);
                              if(_temp_90)
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(Math.floor(this._progress * 100) == this.barPercentWidth);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§goto(addr0699);
                                    }
                                    §§goto(addr07b7);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr0699);
               }
               §§goto(addr02f0);
            }
            §§goto(addr02ee);
         }
         §§goto(addr037f);
      }
      
      private function setProgressBarLabelText() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._progressText == "")
            {
               if(!(_loc2_ && _loc1_))
               {
                  this._progressText = LocaUtils.getString(String("rcl.citysquare.popup.runningevent"),String("rcl.citysquare.popup.runningevent.goodamountseperator"));
                  addr0034:
                  if(_loc1_ || _loc1_)
                  {
                     this._progressText = StringUtil.substitute(this._progressText,LocaUtils.getThousendSeperatedNumber(this._data.currentValue),LocaUtils.getThousendSeperatedNumber(this._data.maxValue));
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00a5:
                        this.eventStepProgressBarLabel.text = this._progressText;
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00a5);
               }
               addr00af:
               return;
            }
            §§goto(addr00a5);
         }
         §§goto(addr0034);
      }
      
      private function setProgressBarUpsellPriceText() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._upsellText == "")
            {
               if(_loc2_)
               {
                  this._upsellText = this._data.upsellingPrice.toString();
                  if(_loc2_ || _loc2_)
                  {
                     addr004b:
                     this.eventStepProgressBarLabel.text = this._upsellText;
                  }
                  §§goto(addr0055);
               }
            }
            §§goto(addr004b);
         }
         addr0055:
      }
      
      private function onAnimationUpdate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.barTint.percentWidth = this.barPercentWidth;
            if(_loc1_ || Boolean(this))
            {
               addr003e:
               this.bar.percentWidth = this.barPercentWidth;
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function getMovingGoodPadding() : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(_loc3_)
         {
            §§push(this.barEnd);
            if(!_loc2_)
            {
               §§push(§§pop().width == 0);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§push(!§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§pop();
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0079:
                              §§push(this.movingGood.width == 0);
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0078:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr009b);
                                 }
                              }
                              §§goto(addr0124);
                           }
                           §§goto(addr00c2);
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0079);
            }
            addr009b:
            §§push(this.barEnd.x + (this.barEnd.width - this.movingGood.width / 2));
            if(_loc3_)
            {
               _loc1_ = §§pop();
               if(_loc3_ || _loc2_)
               {
                  addr00c2:
                  §§push(_loc1_);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(§§pop() < 60)
                     {
                        if(_loc3_)
                        {
                           addr00db:
                           §§push(60);
                           if(!_loc2_)
                           {
                              §§push(§§pop() - this.movingGood.width / 2);
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr0106);
                              }
                              §§goto(addr0114);
                           }
                           §§goto(addr0126);
                        }
                     }
                     §§goto(addr0122);
                  }
                  §§goto(addr0106);
               }
               §§goto(addr00db);
            }
            addr0106:
            §§push(§§pop());
            if(!(_loc2_ && _loc3_))
            {
               addr0114:
               _loc1_ = §§pop();
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0122:
                  return _loc1_;
               }
               else
               {
                  addr0126:
                  return 0;
                  addr0124:
               }
            }
            return §§pop();
         }
         §§goto(addr00c2);
      }
      
      private function setNewPadding() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.movingGoodGroup.paddingLeft = this.getMovingGoodPadding();
         }
      }
      
      private function get progress() : Number
      {
         return this._data.currentValue / this._data.maxValue;
      }
      
      private function onUpsellClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._data.upsellingAffordable)
            {
               if(!_loc2_)
               {
                  this.upsellButton.enabled = false;
                  if(!(_loc2_ && _loc1_))
                  {
                     addr004e:
                     dispatchEvent(new Event(UPSELL_GOOD,true,true));
                     if(_loc1_)
                     {
                     }
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(OPEN_PAYMENT,true,true));
            }
            return;
         }
         §§goto(addr004e);
      }
      
      private function onUpsellRollOver() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._animationIsPlaying)
            {
               if(_loc2_)
               {
                  this._animationIsPlaying = false;
                  if(!(_loc3_ && _loc2_))
                  {
                     this._animationTween.kill();
                     if(!(_loc3_ && _loc1_))
                     {
                        addr0055:
                        this._progress = 1;
                        if(_loc2_ || _loc2_)
                        {
                           this.updateBar();
                           addr0068:
                           if(_loc2_)
                           {
                              addr0080:
                              this.setProgressBarUpsellPriceText();
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.rcIcon.visible = this.rcIcon.includeInLayout = true;
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr00a5);
            }
            §§goto(addr0055);
         }
         addr00a5:
      }
      
      private function onUpsellRollOut() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(this._animationIsPlaying)
            {
               if(_loc3_)
               {
                  this._animationIsPlaying = false;
                  if(!_loc2_)
                  {
                     this._animationTween.kill();
                     if(_loc3_)
                     {
                        addr0054:
                        this._progress = this.progress;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0076:
                           this.updateBar();
                           if(!_loc2_)
                           {
                              this.setProgressBarLabelText();
                              if(_loc3_)
                              {
                                 this.rcIcon.visible = this.rcIcon.includeInLayout = false;
                              }
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0076);
            }
            §§goto(addr0054);
         }
         addr009d:
      }
      
      public function set data(param1:ChallengeBarVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._upsellText = "";
                  if(_loc3_)
                  {
                     addr0061:
                     this._progressText = "";
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        this._data = param1;
                        if(!_loc2_)
                        {
                           addr007e:
                           this._dataIsDirty = true;
                           if(_loc3_)
                           {
                              addr0088:
                              this.commitProperties();
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr007e);
            }
            addr008e:
            return;
         }
         §§goto(addr0061);
      }
      
      public function get data() : ChallengeBarVo
      {
         return this._data;
      }
      
      private function _ChallengeBarComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.gap = 40;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ChallengeBarComponent_Group2_i(),this._ChallengeBarComponent_DynamicPlusButton1_i()];
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr009c);
               }
            }
            §§goto(addr0084);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._ChallengeBarComponent_HGroup2_c(),this._ChallengeBarComponent_HGroup3_i(),this._ChallengeBarComponent_HGroup4_i(),this._ChallengeBarComponent_BriskImageDynaLib10_c(),this._ChallengeBarComponent_Group3_c(),this._ChallengeBarComponent_Group4_i(),this._ChallengeBarComponent_HGroup5_c(),this._ChallengeBarComponent_HGroup6_i()];
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.id = "mainGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0094:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr00b0);
                        }
                        §§goto(addr00c2);
                     }
                  }
                  addr00b0:
                  this.mainGroup = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00c2:
                     BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                  }
                  §§goto(addr00cf);
               }
               addr00cf:
               return _loc1_;
            }
            §§goto(addr0094);
         }
         §§goto(addr00b0);
      }
      
      private function _ChallengeBarComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               §§goto(addr003f);
            }
            §§goto(addr008f);
         }
         addr003f:
         _loc1_.verticalCenter = 0;
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib1_c(),this._ChallengeBarComponent_BriskImageDynaLib2_c(),this._ChallengeBarComponent_BriskImageDynaLib3_c()];
               if(_loc3_)
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
         }
         addr0093:
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "citysquare_bgbar_left";
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0057);
               }
               §§goto(addr006b);
            }
         }
         addr0057:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr006b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "citysquare_bgbar_middle";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc3_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0084:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0078);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "citysquare_bgbar_right";
               if(_loc2_ || Boolean(this))
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr0064);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.paddingLeft = 2;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.paddingRight = 2;
                     addr0058:
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib4_c(),this._ChallengeBarComponent_BriskImageDynaLib5_c(),this._ChallengeBarComponent_BriskImageDynaLib6_i()];
                        if(!_loc2_)
                        {
                           _loc1_.id = "bar";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00a4:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00c3:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00cc:
                                       this.bar = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00d6:
                                          BindingManager.executeBindings(this,"bar",this.bar);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00cc);
                           }
                        }
                        §§goto(addr00d6);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00d6);
            }
            §§goto(addr0058);
         }
         §§goto(addr00c3);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_left";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0062:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0062);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr003f);
            }
            §§goto(addr0084);
         }
         addr003f:
         _loc1_.dynaBmpSourceName = "citysquare_bar_middle";
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0069);
            }
            §§goto(addr0084);
         }
         addr0069:
         _loc1_.percentHeight = 100;
         if(_loc2_)
         {
            _loc1_.addEventListener("sizeChanged",this.___ChallengeBarComponent_BriskImageDynaLib5_sizeChanged);
            if(!_loc3_)
            {
               addr0084:
               if(!_loc1_.document)
               {
                  if(_loc2_)
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
      
      public function ___ChallengeBarComponent_BriskImageDynaLib5_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.setNewPadding();
         }
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_right";
               if(!_loc3_)
               {
                  _loc1_.id = "barEnd";
                  if(_loc2_)
                  {
                     addr0055:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0080:
                              this.barEnd = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"barEnd",this.barEnd);
                              }
                           }
                           §§goto(addr0097);
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0055);
            }
            addr0097:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _ChallengeBarComponent_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  §§goto(addr0033);
               }
            }
            §§goto(addr00c1);
         }
         addr0033:
         _loc1_.paddingLeft = 2;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.paddingRight = 2;
            if(_loc3_)
            {
               §§goto(addr0051);
            }
            §§goto(addr00ca);
         }
         addr0051:
         _loc1_.blendMode = "overlay";
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib7_c(),this._ChallengeBarComponent_BriskImageDynaLib8_c(),this._ChallengeBarComponent_BriskImageDynaLib9_c()];
            if(_loc3_ || _loc3_)
            {
               §§goto(addr008f);
            }
            §§goto(addr00a2);
         }
         addr008f:
         _loc1_.id = "barTint";
         if(!(_loc2_ && Boolean(this)))
         {
            addr00a2:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr00c1:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr00ca);
                  }
               }
               §§goto(addr00dc);
            }
            addr00ca:
            this.barTint = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr00dc:
               BindingManager.executeBindings(this,"barTint",this.barTint);
            }
            §§goto(addr00e9);
         }
         addr00e9:
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_left";
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0060);
               }
            }
            §§goto(addr0074);
         }
         addr0060:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0074:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr0069:
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
            §§goto(addr0087);
         }
         §§goto(addr0069);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_right";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
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
         §§goto(addr006b);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "citysquare_bar_divider";
               if(!_loc3_)
               {
                  _loc1_.alpha = 0.5;
                  if(_loc2_ || Boolean(this))
                  {
                     addr005b:
                     _loc1_.verticalCenter = 0;
                     if(_loc2_)
                     {
                        _loc1_.horizontalCenter = 0;
                        addr0065:
                        if(!_loc3_)
                        {
                           _loc1_.percentWidth = 100;
                           if(!(_loc3_ && Boolean(this)))
                           {
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
                        }
                     }
                     §§goto(addr009a);
                  }
                  addr009e:
                  return _loc1_;
               }
               §§goto(addr0065);
            }
            §§goto(addr005b);
         }
         §§goto(addr008e);
      }
      
      private function _ChallengeBarComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(!_loc2_)
            {
               _loc1_.bottom = 0;
               addr0029:
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib11_i(),this._ChallengeBarComponent_BriskImageDynaLib12_i()];
                  if(_loc3_ || _loc3_)
                  {
                     addr0074:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0074);
            }
            §§goto(addr0080);
         }
         §§goto(addr0029);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ressource_cardboard_mini";
               if(!_loc2_)
               {
                  addr004b:
                  _loc1_.id = "goodBg";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007e:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0087:
                              this.goodBg = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0099:
                                 BindingManager.executeBindings(this,"goodBg",this.goodBg);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr0099);
                        }
                        addr00a6:
                        return _loc1_;
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007e);
               }
            }
            §§goto(addr0099);
         }
         §§goto(addr004b);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.id = "staticGood";
                  if(!_loc3_)
                  {
                     addr004f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr006e:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0077);
                           }
                        }
                        §§goto(addr0089);
                     }
                  }
                  addr0077:
                  this.staticGood = _loc1_;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0089:
                     BindingManager.executeBindings(this,"staticGood",this.staticGood);
                  }
                  return _loc1_;
               }
               §§goto(addr004f);
            }
            §§goto(addr006e);
         }
         §§goto(addr0089);
      }
      
      private function _ChallengeBarComponent_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.bottom = 3;
            if(_loc2_)
            {
               _loc1_.right = -35;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib13_c(),this._ChallengeBarComponent_BriskImageDynaLib14_i(),this._ChallengeBarComponent_BriskImageDynaLib15_c()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "staticTargetGoodGroup";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr00a9:
                                 this.staticTargetGoodGroup = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00bb:
                                    BindingManager.executeBindings(this,"staticTargetGoodGroup",this.staticTargetGoodGroup);
                                 }
                              }
                              §§goto(addr00c8);
                           }
                        }
                     }
                     §§goto(addr00a9);
                  }
               }
               addr00c8:
               return _loc1_;
            }
            §§goto(addr00bb);
         }
         §§goto(addr0081);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "donebox_back";
               if(_loc3_)
               {
                  addr0055:
                  _loc1_.left = -3;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr0092);
               }
               addr0096:
               return _loc1_;
            }
         }
         §§goto(addr0055);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
                  addr0044:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0063:
                     _loc1_.id = "staticTargetGood";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr00a0:
                                 this.staticTargetGood = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"staticTargetGood",this.staticTargetGood);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0063);
            }
            §§goto(addr0044);
         }
         §§goto(addr0063);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               addr003f:
               _loc1_.dynaBmpSourceName = "donebox_front";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.left = -6;
                  if(_loc2_)
                  {
                     _loc1_.top = 12;
                     if(!_loc3_)
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
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _ChallengeBarComponent_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 30;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.height = 30;
                     if(_loc3_ || Boolean(this))
                     {
                        addr006f:
                        _loc1_.paddingBottom = 22;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._ChallengeBarComponent_LocaLabel1_i(),this._ChallengeBarComponent_BriskImageDynaLib16_i()];
                           if(!_loc2_)
                           {
                              addr00a4:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00b8:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr00a4);
            }
            §§goto(addr006f);
         }
         §§goto(addr00a4);
      }
      
      private function _ChallengeBarComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.text = "dev : 0/0";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.styleName = "depositPlayerstockLabel";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "eventStepProgressBarLabel";
                     if(_loc2_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0082:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr009f:
                                 this.eventStepProgressBarLabel = _loc1_;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"eventStepProgressBarLabel",this.eventStepProgressBarLabel);
                                 }
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0082);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr00b1);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaBmpSourceName = "rc_icon_small";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.includeInLayout = false;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "rcIcon";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0091:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr009a);
                                 }
                              }
                              §§goto(addr00ac);
                           }
                           addr009a:
                           this.rcIcon = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00ac:
                              BindingManager.executeBindings(this,"rcIcon",this.rcIcon);
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr00ac);
               }
               addr00b9:
               return _loc1_;
            }
            §§goto(addr009a);
         }
         §§goto(addr00ac);
      }
      
      private function _ChallengeBarComponent_HGroup6_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib17_i()];
                  if(_loc2_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006a);
               }
               addr0057:
               _loc1_.id = "movingGoodGroup";
               if(_loc2_ || _loc2_)
               {
                  addr006a:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr008c:
                           this.movingGoodGroup = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009e:
                              BindingManager.executeBindings(this,"movingGoodGroup",this.movingGoodGroup);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr008c);
               }
               addr00ab:
               return _loc1_;
            }
            §§goto(addr006a);
         }
         §§goto(addr009e);
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib17_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
            if(!_loc3_)
            {
               _loc1_.addEventListener("sizeChanged",this.__movingGood_sizeChanged);
               if(!_loc3_)
               {
                  _loc1_.id = "movingGood";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0079:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0082:
                              this.movingGood = _loc1_;
                              if(!_loc3_)
                              {
                                 addr008c:
                                 BindingManager.executeBindings(this,"movingGood",this.movingGood);
                              }
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0082);
                  }
                  addr0099:
                  return _loc1_;
               }
               §§goto(addr008c);
            }
         }
         §§goto(addr0079);
      }
      
      public function __movingGood_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.setNewPadding();
         }
      }
      
      private function _ChallengeBarComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 40;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.iconLibName = "gui_resources_icons";
               if(!_loc2_)
               {
                  _loc1_.iconImageName = "dd_button_icon";
                  if(_loc3_)
                  {
                     addr0057:
                     _loc1_.right = 0;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.showSparkle = false;
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.useConfirmation = true;
                           if(_loc3_)
                           {
                              addr0092:
                              _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                              if(!_loc2_)
                              {
                                 _loc1_.addEventListener("click",this.__upsellButton_click);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    _loc1_.addEventListener("rollOver",this.__upsellButton_rollOver);
                                    if(_loc3_)
                                    {
                                       _loc1_.addEventListener("rollOut",this.__upsellButton_rollOut);
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00e4:
                                          _loc1_.id = "upsellButton";
                                          if(_loc3_)
                                          {
                                             if(!_loc1_.document)
                                             {
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   addr0110:
                                                   _loc1_.document = this;
                                                   if(_loc3_)
                                                   {
                                                      addr0119:
                                                      this.upsellButton = _loc1_;
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr012b:
                                                         BindingManager.executeBindings(this,"upsellButton",this.upsellButton);
                                                      }
                                                   }
                                                }
                                                §§goto(addr0138);
                                             }
                                          }
                                          §§goto(addr0119);
                                       }
                                       §§goto(addr012b);
                                    }
                                    addr0138:
                                    return _loc1_;
                                 }
                                 §§goto(addr012b);
                              }
                              §§goto(addr0110);
                           }
                           §§goto(addr012b);
                        }
                     }
                  }
                  §§goto(addr0092);
               }
            }
            §§goto(addr0057);
         }
         §§goto(addr00e4);
      }
      
      public function __upsellButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.onUpsellClick();
         }
      }
      
      public function __upsellButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onUpsellRollOver();
         }
      }
      
      public function __upsellButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onUpsellRollOut();
         }
      }
      
      public function ___ChallengeBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _ChallengeBarComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || _loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§pop()[0] = new Binding(this,function():Number
                     {
                        return this.width - 50;
                     },null,"mainGroup.width");
                     addr0071:
                     addr006f:
                     return result;
                  }
               }
               §§goto(addr0071);
            }
            §§goto(addr006f);
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : HGroup
      {
         return this._97299bar;
      }
      
      public function set bar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._97299bar;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._97299bar = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr007d);
            }
         }
         addr008c:
      }
      
      [Bindable(event="propertyChange")]
      public function get barEnd() : BriskImageDynaLib
      {
         return this._1396262968barEnd;
      }
      
      public function set barEnd(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1396262968barEnd;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1396262968barEnd = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barEnd",_loc2_,param1));
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
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get barTint() : HGroup
      {
         return this._334036562barTint;
      }
      
      public function set barTint(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._334036562barTint;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._334036562barTint = param1;
                  addr003f:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTint",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventStepProgressBarLabel() : LocaLabel
      {
         return this._1089021804eventStepProgressBarLabel;
      }
      
      public function set eventStepProgressBarLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1089021804eventStepProgressBarLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1089021804eventStepProgressBarLabel = param1;
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventStepProgressBarLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodBg() : BriskImageDynaLib
      {
         return this._1240248862goodBg;
      }
      
      public function set goodBg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1240248862goodBg;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1240248862goodBg = param1;
                  addr003b:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodBg",_loc2_,param1));
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
         §§goto(addr003b);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : Group
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._273241018mainGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get movingGood() : BriskImageDynaLib
      {
         return this._1565735381movingGood;
      }
      
      public function set movingGood(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1565735381movingGood;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1565735381movingGood = param1;
                  if(!_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movingGood",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get movingGoodGroup() : HGroup
      {
         return this._1440572180movingGoodGroup;
      }
      
      public function set movingGoodGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1440572180movingGoodGroup;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004f:
                  this._1440572180movingGoodGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movingGoodGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcIcon() : BriskImageDynaLib
      {
         return this._937542070rcIcon;
      }
      
      public function set rcIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._937542070rcIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._937542070rcIcon = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcIcon",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get staticGood() : BriskImageDynaLib
      {
         return this._110699445staticGood;
      }
      
      public function set staticGood(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110699445staticGood;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._110699445staticGood = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticGood",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get staticTargetGood() : BriskImageDynaLib
      {
         return this._74854140staticTargetGood;
      }
      
      public function set staticTargetGood(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._74854140staticTargetGood;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._74854140staticTargetGood = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticTargetGood",_loc2_,param1));
                        }
                     }
                     §§goto(addr008f);
                  }
               }
               §§goto(addr0080);
            }
            addr008f:
            return;
         }
         §§goto(addr0080);
      }
      
      [Bindable(event="propertyChange")]
      public function get staticTargetGoodGroup() : Group
      {
         return this._2040933149staticTargetGoodGroup;
      }
      
      public function set staticTargetGoodGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2040933149staticTargetGoodGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2040933149staticTargetGoodGroup = param1;
                  addr0042:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticTargetGoodGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get upsellButton() : DynamicPlusButton
      {
         return this._2141414911upsellButton;
      }
      
      public function set upsellButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2141414911upsellButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2141414911upsellButton = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upsellButton",_loc2_,param1));
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
   }
}

