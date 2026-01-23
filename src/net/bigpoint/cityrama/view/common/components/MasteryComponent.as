package net.bigpoint.cityrama.view.common.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.mastery.MasteryComponentVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class MasteryComponent extends Group implements IBindingClient
   {
      
      public static const SHOW_MASTERY_INFOLAYER:String = "SHOW_MASTERY_INFOLAYER";
      
      public static const HIDE_MASTERY_INFOLAYER:String = "HIDE_MASTERY_INFOLAYER";
      
      public static const COLLECT_MASTERY_CLICKED:String = "COLLECT_MASTERY_CLICKED";
      
      public static const INSTANT_FINISH_MASTERY:String = "INSTANT_FINISH_MASTERY";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         SHOW_MASTERY_INFOLAYER = "SHOW_MASTERY_INFOLAYER";
         if(_loc1_)
         {
            HIDE_MASTERY_INFOLAYER = "HIDE_MASTERY_INFOLAYER";
            if(!(_loc2_ && MasteryComponent))
            {
               COLLECT_MASTERY_CLICKED = "COLLECT_MASTERY_CLICKED";
               if(_loc1_)
               {
                  addr005b:
                  INSTANT_FINISH_MASTERY = "INSTANT_FINISH_MASTERY";
               }
            }
            return;
         }
      }
      §§goto(addr005b);
      
      private var _1271589544buyButton:DynamicPlusButton;
      
      private var _1434885828buyInstantGroup:VGroup;
      
      private var _1438983993buyInstantLabel:LocaLabel;
      
      private var _1932038916collectButton:MultistateButton;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _96419224masteryGroup:VGroup;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1131509414progressBar:SlimProgressBarComponent;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _1844912971upgradeIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryComponentVo;
      
      private var _dataChanged:Boolean;
      
      private var _starIcons:Vector.<BriskImageDynaLib>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MasteryComponent()
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
         if(!_loc4_)
         {
            §§push(null);
            if(!(_loc4_ && _loc1_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr004a:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc1_))
                        {
                           addr0070:
                           this.mx_internal::_watchers = [];
                           if(!_loc4_)
                           {
                              addr007c:
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(_loc3_ || Boolean(this))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00bd:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._MasteryComponent_bindingsSetup();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      addr00f8:
                                                      §§push(§§newactivation());
                                                      if(_loc3_)
                                                      {
                                                         addr00ff:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            addr0111:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0139:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_MasteryComponentWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        addr0155:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr015c:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr017b:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return MasteryComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr01c0:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01e7:
                                                                                       this.mxmlContent = [this._MasteryComponent_HGroup1_c(),this._MasteryComponent_UiInfolayerAlignmentLine1_i()];
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          addr0208:
                                                                                          i = 0;
                                                                                          addr0206:
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
                                                                                                   break loop1;
                                                                                                }
                                                                                                Binding(bindings[i]).execute();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[4]);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      var _temp_21:* = §§pop();
                                                                                                      §§pop().§§slot[4] = _temp_21;
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    return;
                                                                                    addr026d:
                                                                                 }
                                                                                 §§goto(addr01e7);
                                                                              }
                                                                              §§goto(addr0206);
                                                                           }
                                                                           §§goto(addr01c0);
                                                                        }
                                                                        §§goto(addr0208);
                                                                     }
                                                                     §§goto(addr01c0);
                                                                  }
                                                                  §§goto(addr0208);
                                                               }
                                                               §§goto(addr026d);
                                                            }
                                                         }
                                                         §§goto(addr017b);
                                                      }
                                                      §§goto(addr0139);
                                                   }
                                                   §§goto(addr0111);
                                                }
                                                §§goto(addr0208);
                                             }
                                             §§goto(addr00f8);
                                          }
                                          §§goto(addr00ff);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0155);
                                 }
                                 §§goto(addr00f8);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr01c0);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr015c);
               }
               §§goto(addr0070);
            }
            §§goto(addr004a);
         }
         §§goto(addr0139);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            MasteryComponent._watcherSetupUtil = param1;
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
            if(!_loc2_)
            {
               addr002c:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr002c);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:MasteryComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc2_ || _loc3_)
               {
                  this._data = param1;
                  if(!_loc3_)
                  {
                     this._dataChanged = true;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr005b:
                        invalidateProperties();
                     }
                     §§goto(addr0060);
                  }
               }
               §§goto(addr005b);
            }
            addr0060:
            return;
         }
         §§goto(addr005b);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc1_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:BriskImageDynaLib = null;
         if(!_loc8_)
         {
            super.commitProperties();
            if(_loc9_)
            {
               §§push(this._dataChanged);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        this._dataChanged = false;
                        if(_loc9_)
                        {
                           §§push(true);
                           if(_loc9_ || Boolean(this))
                           {
                              _loc1_ = §§pop();
                              if(_loc9_ || Boolean(_loc3_))
                              {
                                 §§push(false);
                                 if(_loc9_ || Boolean(_loc3_))
                                 {
                                    addr0084:
                                    _loc2_ = §§pop();
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(0);
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(_loc9_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc9_ || Boolean(_loc3_))
                                             {
                                                §§push(this._data);
                                                if(_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§push(this._data);
                                                         if(!(_loc8_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(§§pop().masteryLocked);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  addr00ef:
                                                                  _loc1_ = §§pop();
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§push(this._data);
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        addr0110:
                                                                        §§push(§§pop().currentMasteryIndex);
                                                                        if(_loc9_ || _loc1_)
                                                                        {
                                                                           addr0121:
                                                                           §§push(§§pop());
                                                                           if(!(_loc8_ && Boolean(this)))
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(_loc9_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop().readyToCollect);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc9_ || Boolean(this))
                                                                                          {
                                                                                             addr0168:
                                                                                             §§push(_loc2_);
                                                                                             if(_loc9_ || _loc1_)
                                                                                             {
                                                                                                addr0177:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr0186:
                                                                                                   var _temp_17:* = §§pop();
                                                                                                   §§push(_temp_17);
                                                                                                   if(_temp_17)
                                                                                                   {
                                                                                                      if(_loc9_ || _loc2_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                            {
                                                                                                               addr01af:
                                                                                                               §§push(!§§pop());
                                                                                                               if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  addr01be:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc9_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr01d0:
                                                                                                                        §§push(this.upgradeIcon);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push("mastery_star_icon");
                                                                                                                           if(_loc9_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§pop().dynaBmpSourceName = §§pop();
                                                                                                                              if(_loc9_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(this.collectButton);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(this.collectButton);
                                                                                                                                    if(_loc9_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       if(!(_loc8_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          var _temp_26:* = §§pop();
                                                                                                                                          §§push(_temp_26);
                                                                                                                                          §§push(_temp_26);
                                                                                                                                          if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                          {
                                                                                                                                             var _loc6_:* = §§pop();
                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().includeInLayout = §§pop();
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().visible = §§pop();
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr0266:
                                                                                                                                                            §§push(this.buyButton);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(false);
                                                                                                                                                               if(!(_loc8_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                  if(!(_loc8_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     this.masteryGroup.visible = this.masteryGroup.includeInLayout = false;
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02b5:
                                                                                                                                                                        §§push(this.collectButton);
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().label = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.button.reward.capital");
                                                                                                                                                                           if(!(_loc9_ || _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              addr034b:
                                                                                                                                                                              §§push(this.progressBar);
                                                                                                                                                                              §§push(this._data.currentProgress);
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / this._data.targetProgress);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().progress = §§pop();
                                                                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0375:
                                                                                                                                                                                 addr0376:
                                                                                                                                                                                 if(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0380:
                                                                                                                                                                                       §§push(this.buyButton);
                                                                                                                                                                                       if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(false);
                                                                                                                                                                                          if(_loc9_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03a9:
                                                                                                                                                                                                §§push(this.upgradeIcon);
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03b3:
                                                                                                                                                                                                   §§push("mastery_lock_icon");
                                                                                                                                                                                                   if(!(_loc8_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03c5:
                                                                                                                                                                                                      §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr03d5:
                                                                                                                                                                                                         §§push(this.infoLabel);
                                                                                                                                                                                                         if(_loc9_ || _loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.mastery.unlocks",[this._data.masteryUnlockLevel]));
                                                                                                                                                                                                            if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().text = §§pop();
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0477:
                                                                                                                                                                                                                  this.buyButton.priceToConfirm = this._data.instantFinishPrice;
                                                                                                                                                                                                                  addr046f:
                                                                                                                                                                                                                  addr0473:
                                                                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr048a:
                                                                                                                                                                                                                     this.upgradeIcon.dynaBmpSourceName = "upgrade_icon";
                                                                                                                                                                                                                     addr0483:
                                                                                                                                                                                                                     addr0487:
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0492:
                                                                                                                                                                                                                        addr0493:
                                                                                                                                                                                                                        if(_loc3_ < 4)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr049f:
                                                                                                                                                                                                                              §§push(this.infoLabel);
                                                                                                                                                                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.progress.normal"));
                                                                                                                                                                                                                                 if(_loc9_ || _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().text = §§pop();
                                                                                                                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr04f7);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr04ef:
                                                                                                                                                                                                                                    §§pop().text = §§pop();
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr04f7);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0501);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr04e3:
                                                                                                                                                                                                                                 §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.progress.final"));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr04ef);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr04f7);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.infoLabel);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr04e3);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0501);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04f7);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04ef);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04e3);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0483);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr048a);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0487);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr042f:
                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                             if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.buyButton);
                                                                                                                                                                                                if(_loc9_ || _loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0451:
                                                                                                                                                                                                   §§push(this._data);
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0466:
                                                                                                                                                                                                      §§pop().showPlus = §§pop().amountRC < this._data.instantFinishPrice;
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr046f);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04f7);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0477);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0473);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04f7);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0473);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr04f7:
                                                                                                                                                                                    addr0503:
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                       addr0501:
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                    }
                                                                                                                                                                                    for each(_loc5_ in this.starIcons)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_ < _loc3_);
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             var _temp_43:* = §§pop();
                                                                                                                                                                                             §§push(_temp_43);
                                                                                                                                                                                             if(_temp_43)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0546:
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(_loc9_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr055d:
                                                                                                                                                                                                      addr0555:
                                                                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr055c:
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc5_.dynaBmpSourceName = "mastery_star_blue";
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc5_.dynaBmpSourceName = "mastery_star_grey";
                                                                                                                                                                                                         if(_loc8_ && _loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc4_++;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr055c);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr055d);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0546);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0555);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05af);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.buyButton);
                                                                                                                                                                                    if(!(_loc8_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr042f);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0466);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0451);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr049f);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr05af);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr02ec:
                                                                                                                                                                           this.collectButton.includeInLayout = _loc6_ = false;
                                                                                                                                                                           addr02f2:
                                                                                                                                                                           §§pop().visible = _loc6_;
                                                                                                                                                                           addr02f0:
                                                                                                                                                                           addr02ee:
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              addr02fa:
                                                                                                                                                                              this.masteryGroup.visible = this.masteryGroup.includeInLayout = true;
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0318:
                                                                                                                                                                                 if(this._data)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr032a:
                                                                                                                                                                                       this.buyInstantLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.instant",[this._data.instantFinishPrice]);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr034b);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03a9);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0492);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0375);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0501);
                                                                                                                                                                           }
                                                                                                                                                                           addr02ea:
                                                                                                                                                                           addr02e9:
                                                                                                                                                                           addr02e8:
                                                                                                                                                                           addr02e4:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0492);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04f7);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr02b5);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0466);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0451);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr046f);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02f2);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02f0);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02ee);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02ec);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02ea);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02e9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02e8);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02e4);
                                                                                                                              }
                                                                                                                              §§goto(addr02fa);
                                                                                                                           }
                                                                                                                           §§goto(addr03c5);
                                                                                                                        }
                                                                                                                        §§goto(addr03b3);
                                                                                                                     }
                                                                                                                     §§goto(addr04f7);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.collectButton);
                                                                                                                  }
                                                                                                                  §§goto(addr02e4);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0376);
                                                                                                         }
                                                                                                         §§goto(addr03d5);
                                                                                                      }
                                                                                                      §§goto(addr01af);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01be);
                                                                                             }
                                                                                             §§goto(addr01af);
                                                                                          }
                                                                                          §§goto(addr0380);
                                                                                       }
                                                                                       §§goto(addr0186);
                                                                                    }
                                                                                    §§goto(addr0177);
                                                                                 }
                                                                                 §§goto(addr0318);
                                                                              }
                                                                              §§goto(addr01d0);
                                                                           }
                                                                        }
                                                                        §§goto(addr0493);
                                                                     }
                                                                     §§goto(addr0318);
                                                                  }
                                                                  §§goto(addr049f);
                                                               }
                                                               §§goto(addr0177);
                                                            }
                                                            §§goto(addr00ef);
                                                         }
                                                         §§goto(addr0318);
                                                      }
                                                      §§goto(addr0266);
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr0110);
                                             }
                                             §§goto(addr046f);
                                          }
                                          §§goto(addr0121);
                                       }
                                       §§goto(addr0503);
                                    }
                                    §§goto(addr049f);
                                 }
                                 §§goto(addr0186);
                              }
                              §§goto(addr0266);
                           }
                           §§goto(addr01af);
                        }
                        §§goto(addr0375);
                     }
                     §§goto(addr03d5);
                  }
                  addr05af:
                  return;
               }
               §§goto(addr0084);
            }
            §§goto(addr02b5);
         }
         §§goto(addr032a);
      }
      
      private function get starIcons() : Vector.<BriskImageDynaLib>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this._starIcons == null)
            {
               if(_loc1_)
               {
                  §§push(this);
                  §§pop()._starIcons = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
                  addr002b:
               }
            }
            return this._starIcons;
         }
         §§goto(addr002b);
      }
      
      private function masteryGroupRollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param1))
         {
            param1.stopPropagation();
         }
         var _loc2_:* = -1;
         var _loc3_:* = param1.currentTarget;
         if(!_loc4_)
         {
            switch(_loc3_)
            {
               case this.masteryStar0:
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                     }
                     break;
                  }
                  addr0153:
                  §§push(3);
                  if(_loc4_ && Boolean(_loc3_))
                  {
                  }
                  break;
               case this.masteryStar1:
                  if(!_loc5_)
                  {
                     §§goto(addr0153);
                  }
                  break;
               case this.masteryStar2:
                  if(!_loc4_)
                  {
                     §§push(2);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                     }
                  }
                  break;
               case this.masteryStar3:
                  if(_loc5_)
                  {
                     §§goto(addr0153);
                  }
               case this.masteryStar4:
                  §§push(4);
                  if(_loc5_ || Boolean(_loc2_))
                  {
                  }
                  break;
               default:
                  §§push(5);
            }
            loop0:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     §§push(0);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        _loc2_ = §§pop();
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           break;
                        }
                        break loop0;
                     }
                     addr00b2:
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     TweenMax.to(param1.currentTarget,1,{"glowFilter":{
                        "color":1821182,
                        "alpha":1,
                        "blurX":4,
                        "blurY":4,
                        "strength":4
                     }});
                     addr01d1:
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        addr0218:
                        dispatchEvent(new ShowMasteryInfolayerEvent(_loc2_));
                     }
                     break loop0;
                  case 1:
                     §§push(1);
                     if(_loc5_)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                        }
                        break;
                     }
                     continue;
                  case 2:
                     §§push(2);
                     if(_loc4_ && Boolean(param1))
                     {
                        addr0096:
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     _loc2_ = §§pop();
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        break;
                     }
                     §§goto(addr01d1);
                     break;
                  case 3:
                     §§push(3);
                     if(!_loc4_)
                     {
                        §§goto(addr0096);
                     }
                     else
                     {
                        §§goto(addr00b2);
                     }
                  case 4:
                     §§push(4);
                     if(_loc4_ && Boolean(_loc3_))
                     {
                        continue;
                     }
                     §§goto(addr00b2);
               }
               if(this._data.currentMasteryIndex <= _loc2_)
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§goto(addr01d1);
                  }
               }
               §§goto(addr0218);
            }
            return;
         }
         §§push(1);
         if(_loc4_ && Boolean(_loc3_))
         {
         }
         §§goto(addr0190);
      }
      
      private function masteryGroupRollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            TweenMax.to(param1.currentTarget,1,{"glowFilter":{
               "color":65535,
               "alpha":0,
               "blurX":0,
               "blurY":0,
               "strength":1
            }});
            if(!_loc2_)
            {
               param1.stopPropagation();
               if(_loc3_ || Boolean(param1))
               {
                  dispatchEvent(new Event(HIDE_MASTERY_INFOLAYER));
               }
            }
         }
      }
      
      private function collectButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(param1)))
            {
               addr003d:
               dispatchEvent(new Event(COLLECT_MASTERY_CLICKED));
            }
            return;
         }
         §§goto(addr003d);
      }
      
      private function buyButton_rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this._data);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(this._data);
                     if(!_loc4_)
                     {
                        addr003f:
                        §§push(§§pop().masteryLocked);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(!§§pop());
                           if(_loc3_ || Boolean(this))
                           {
                              addr0068:
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              if(_temp_4)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop();
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§goto(addr0097);
                                    }
                                    §§goto(addr00a1);
                                 }
                                 §§goto(addr0096);
                              }
                           }
                           addr0097:
                           §§goto(addr008e);
                        }
                        §§goto(addr0068);
                     }
                     addr008e:
                     §§push(this._data.readyToCollect);
                     if(_loc3_)
                     {
                        addr0096:
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           this.masteryGroup.visible = this.masteryGroup.includeInLayout = false;
                           addr00a1:
                           if(!_loc4_)
                           {
                              this.buyInstantGroup.visible = this.buyInstantGroup.includeInLayout = true;
                           }
                        }
                     }
                     §§goto(addr00da);
                  }
               }
               §§goto(addr00da);
            }
            §§goto(addr003f);
         }
         addr00da:
      }
      
      private function buyButton_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this._data);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(this._data);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop().masteryLocked);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              var _temp_3:* = §§pop();
                              §§push(_temp_3);
                              if(_temp_3)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§pop();
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       §§goto(addr008f);
                                    }
                                    §§goto(addr0098);
                                 }
                                 §§goto(addr008e);
                              }
                           }
                           addr008f:
                           §§goto(addr0085);
                        }
                        §§goto(addr008e);
                     }
                     addr0085:
                     §§push(this._data.readyToCollect);
                     if(!_loc4_)
                     {
                        addr008e:
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           this.masteryGroup.visible = this.masteryGroup.includeInLayout = true;
                           addr0098:
                           if(!_loc4_)
                           {
                              addr00bc:
                              this.buyInstantGroup.visible = this.buyInstantGroup.includeInLayout = false;
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00ce);
                  }
               }
               §§goto(addr00ce);
            }
            §§goto(addr0085);
         }
         addr00ce:
      }
      
      private function instantFinishClickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            dispatchEvent(new Event(INSTANT_FINISH_MASTERY));
         }
      }
      
      private function _MasteryComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalAlign = "top";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.width = 218;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._MasteryComponent_Group2_c(),this._MasteryComponent_VGroup1_i(),this._MasteryComponent_MultistateButton1_i(),this._MasteryComponent_VGroup2_i(),this._MasteryComponent_DynamicPlusButton1_i()];
                     if(_loc3_)
                     {
                        addr0090:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr00a4:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0090);
         }
         §§goto(addr00a4);
      }
      
      private function _MasteryComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 31;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0043:
               _loc1_.height = 36;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._MasteryComponent_BriskImageDynaLib1_i()];
                  if(_loc3_)
                  {
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0086);
            }
            §§goto(addr0072);
         }
         §§goto(addr0043);
      }
      
      private function _MasteryComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0049:
               _loc1_.id = "upgradeIcon";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0085:
                           this.upgradeIcon = _loc1_;
                           if(_loc3_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"upgradeIcon",this.upgradeIcon);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr008f);
            }
            §§goto(addr0085);
         }
         §§goto(addr0049);
      }
      
      private function _MasteryComponent_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 2;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.horizontalAlign = "center";
                        addr0063:
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._MasteryComponent_Group3_c(),this._MasteryComponent_Group4_c(),this._MasteryComponent_LocaLabel1_i()];
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr009c:
                              _loc1_.id = "masteryGroup";
                              if(_loc3_)
                              {
                                 addr00a7:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00d9:
                                          this.masteryGroup = _loc1_;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr00eb:
                                             BindingManager.executeBindings(this,"masteryGroup",this.masteryGroup);
                                          }
                                       }
                                    }
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr00d9);
                              }
                           }
                           §§goto(addr00eb);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0063);
               }
               addr00f8:
               return _loc1_;
            }
         }
         §§goto(addr00a7);
      }
      
      private function _MasteryComponent_Group3_c() : Group
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
               addr003f:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._MasteryComponent_HGroup2_c()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0081);
         }
         §§goto(addr003f);
      }
      
      private function _MasteryComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 1;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._MasteryComponent_BriskImageDynaLib2_i(),this._MasteryComponent_BriskImageDynaLib3_i(),this._MasteryComponent_BriskImageDynaLib4_i(),this._MasteryComponent_BriskImageDynaLib5_i(),this._MasteryComponent_BriskImageDynaLib6_i()];
               if(!_loc2_)
               {
                  addr006f:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr007b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr006f);
      }
      
      private function _MasteryComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.addEventListener("rollOver",this.__masteryStar0_rollOver);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.addEventListener("rollOut",this.__masteryStar0_rollOut);
                  if(!_loc3_)
                  {
                     addr0067:
                     _loc1_.id = "masteryStar0";
                     if(!_loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr009b:
                                 this.masteryStar0 = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00ad:
                                    BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00ad);
                           }
                           addr00ba:
                           return _loc1_;
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007e);
            }
            §§goto(addr0067);
         }
         §§goto(addr009b);
      }
      
      public function __masteryStar0_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.masteryGroupRollOverHandler(param1);
         }
      }
      
      public function __masteryStar0_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.masteryGroupRollOutHandler(param1);
         }
      }
      
      private function _MasteryComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && _loc3_))
            {
               addr003a:
               _loc1_.addEventListener("rollOver",this.__masteryStar1_rollOver);
               if(_loc2_)
               {
                  _loc1_.addEventListener("rollOut",this.__masteryStar1_rollOut);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0070:
                     _loc1_.id = "masteryStar1";
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr00a2);
                           }
                        }
                        §§goto(addr00ab);
                     }
                  }
                  addr00a2:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr00ab:
                     this.masteryStar1 = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
                     }
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0070);
            }
            addr00ca:
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      public function __masteryStar1_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.masteryGroupRollOverHandler(param1);
         }
      }
      
      public function __masteryStar1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.masteryGroupRollOutHandler(param1);
         }
      }
      
      private function _MasteryComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc2_)
            {
               addr0034:
               _loc1_.addEventListener("rollOver",this.__masteryStar2_rollOver);
               if(!_loc2_)
               {
                  _loc1_.addEventListener("rollOut",this.__masteryStar2_rollOut);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0069:
                     _loc1_.id = "masteryStar2";
                     if(!_loc2_)
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr0080);
                  }
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0080:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr00af);
                  }
                  addr009d:
                  this.masteryStar2 = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00af:
                     BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
                  }
                  return _loc1_;
               }
               §§goto(addr0080);
            }
            §§goto(addr0069);
         }
         §§goto(addr0034);
      }
      
      public function __masteryStar2_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.masteryGroupRollOverHandler(param1);
         }
      }
      
      public function __masteryStar2_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.masteryGroupRollOutHandler(param1);
         }
      }
      
      private function _MasteryComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0034:
               _loc1_.addEventListener("rollOver",this.__masteryStar3_rollOver);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.addEventListener("rollOut",this.__masteryStar3_rollOut);
                  if(_loc3_)
                  {
                     _loc1_.id = "masteryStar3";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr009e);
                              }
                              §§goto(addr00b0);
                           }
                        }
                     }
                  }
                  addr009e:
                  this.masteryStar3 = _loc1_;
                  if(_loc3_ || _loc2_)
                  {
                     addr00b0:
                     BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr00b0);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      public function __masteryStar3_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.masteryGroupRollOverHandler(param1);
         }
      }
      
      public function __masteryStar3_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.masteryGroupRollOutHandler(param1);
         }
      }
      
      private function _MasteryComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.addEventListener("rollOver",this.__masteryStar4_rollOver);
               if(_loc3_)
               {
                  _loc1_.addEventListener("rollOut",this.__masteryStar4_rollOut);
                  if(_loc3_)
                  {
                     _loc1_.id = "masteryStar4";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0091:
                                 this.masteryStar4 = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr007c);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr0088);
         }
         §§goto(addr0091);
      }
      
      public function __masteryStar4_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.masteryGroupRollOverHandler(param1);
         }
      }
      
      public function __masteryStar4_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.masteryGroupRollOutHandler(param1);
         }
      }
      
      private function _MasteryComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 15;
            if(!_loc3_)
            {
               §§goto(addr0037);
            }
            §§goto(addr004e);
         }
         addr0037:
         _loc1_.percentWidth = 100;
         if(_loc2_)
         {
            addr004e:
            _loc1_.mxmlContent = [this._MasteryComponent_SlimProgressBarComponent1_i()];
            if(_loc2_ || Boolean(this))
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
      
      private function _MasteryComponent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.progress = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0053:
                  _loc1_.id = "progressBar";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0090:
                              this.progressBar = _loc1_;
                              if(_loc2_)
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"progressBar",this.progressBar);
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr009a);
            }
            §§goto(addr0053);
         }
         §§goto(addr009a);
      }
      
      private function _MasteryComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "residentialProgressComment";
               if(!(_loc3_ && _loc2_))
               {
                  addr0046:
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc3_)
                  {
                     _loc1_.id = "infoLabel";
                     if(!_loc3_)
                     {
                        addr005c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0073:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr007c:
                                 this.infoLabel = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr008e:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                              }
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr007c);
                     }
                     addr009b:
                     return _loc1_;
                  }
                  §§goto(addr0073);
               }
               §§goto(addr005c);
            }
            §§goto(addr0046);
         }
         §§goto(addr008e);
      }
      
      private function _MasteryComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.visible = false;
            if(!_loc3_)
            {
               _loc1_.includeInLayout = false;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.showSparkle = true;
                  if(_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc2_)
                     {
                        _loc1_.addEventListener("click",this.__collectButton_click);
                        if(_loc2_)
                        {
                           _loc1_.addEventListener("rollOver",this.__collectButton_rollOver);
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.addEventListener("rollOut",this.__collectButton_rollOut);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a1:
                                 _loc1_.id = "collectButton";
                                 if(_loc2_)
                                 {
                                    addr00b9:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00c5:
                                          _loc1_.document = this;
                                          if(_loc2_)
                                          {
                                             addr00ce:
                                             this.collectButton = _loc1_;
                                             if(!_loc3_)
                                             {
                                                addr00d8:
                                                BindingManager.executeBindings(this,"collectButton",this.collectButton);
                                             }
                                             §§goto(addr00e5);
                                          }
                                          §§goto(addr00d8);
                                       }
                                       addr00e5:
                                       return _loc1_;
                                    }
                                    §§goto(addr00ce);
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00d8);
                        }
                     }
                     §§goto(addr00a1);
                  }
               }
               §§goto(addr00b9);
            }
            §§goto(addr00a1);
         }
         §§goto(addr00c5);
      }
      
      public function __collectButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.collectButton_clickHandler(param1);
         }
      }
      
      public function __collectButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.masteryGroupRollOverHandler(param1);
         }
      }
      
      public function __collectButton_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.masteryGroupRollOutHandler(param1);
         }
      }
      
      private function _MasteryComponent_VGroup2_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 60;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.visible = false;
                  if(!_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc3_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.mxmlContent = [this._MasteryComponent_LocaLabel2_i()];
                              if(!_loc2_)
                              {
                                 addr008e:
                                 _loc1_.id = "buyInstantGroup";
                                 if(!_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00a5);
                                       }
                                    }
                                    §§goto(addr00c2);
                                 }
                              }
                              addr00a5:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c2:
                                 this.buyInstantGroup = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00d4:
                                    BindingManager.executeBindings(this,"buyInstantGroup",this.buyInstantGroup);
                                 }
                              }
                              §§goto(addr00e1);
                           }
                           addr00e1:
                           return _loc1_;
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00c2);
            }
            §§goto(addr00a5);
         }
         §§goto(addr008e);
      }
      
      private function _MasteryComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.maxWidth = 110;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.width = 110;
               if(_loc3_ || _loc3_)
               {
                  addr0059:
                  _loc1_.maxDisplayedLines = 4;
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "residentialProgressComment";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "buyInstantLabel";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009b:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00ac:
                                    this.buyInstantLabel = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b6:
                                       BindingManager.executeBindings(this,"buyInstantLabel",this.buyInstantLabel);
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr009b);
                     }
                     addr00c3:
                     return _loc1_;
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr009b);
            }
            §§goto(addr0059);
         }
         §§goto(addr009b);
      }
      
      private function _MasteryComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!_loc2_)
         {
            _loc1_.width = 40;
            if(_loc3_ || _loc3_)
            {
               _loc1_.useConfirmation = true;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.iconImageName = "dd_button_icon";
                  if(!_loc2_)
                  {
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(_loc3_)
                        {
                           _loc1_.addEventListener("rollOver",this.__buyButton_rollOver);
                           addr0076:
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.addEventListener("rollOut",this.__buyButton_rollOut);
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00e0);
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr0112);
               }
               addr00b5:
               _loc1_.addEventListener("click",this.__buyButton_click);
               if(_loc3_ || _loc3_)
               {
                  addr00cd:
                  _loc1_.id = "buyButton";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00e0:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00f7:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0108:
                              this.buyButton = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0112:
                                 BindingManager.executeBindings(this,"buyButton",this.buyButton);
                              }
                           }
                           §§goto(addr011f);
                        }
                        §§goto(addr0112);
                     }
                     §§goto(addr0108);
                  }
               }
               addr011f:
               return _loc1_;
            }
            §§goto(addr0076);
         }
         §§goto(addr0108);
      }
      
      public function __buyButton_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.buyButton_rollOverHandler(param1);
         }
      }
      
      public function __buyButton_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.buyButton_rollOutHandler(param1);
         }
      }
      
      public function __buyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.instantFinishClickHandler(param1);
         }
      }
      
      private function _MasteryComponent_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.left = 40;
            if(!_loc2_)
            {
               _loc1_.top = 30;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr00c5);
            }
            §§goto(addr0064);
         }
         addr0047:
         _loc1_.right = 40;
         if(_loc3_ || _loc3_)
         {
            addr0064:
            _loc1_.lineId = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "uiInfolayerAlignmentLine";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr00b3);
                        }
                        §§goto(addr00c5);
                     }
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00c5);
            }
         }
         addr00b3:
         this.uiInfolayerAlignmentLine = _loc1_;
         if(!(_loc2_ && Boolean(this)))
         {
            addr00c5:
            BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         }
         return _loc1_;
      }
      
      private function _MasteryComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr005a);
               }
               §§goto(addr007e);
            }
            §§goto(addr007c);
         }
         addr005a:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc3_))
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr007e:
            addr007c:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : DynamicPlusButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1271589544buyButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
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
      public function get buyInstantGroup() : VGroup
      {
         return this._1434885828buyInstantGroup;
      }
      
      public function set buyInstantGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1434885828buyInstantGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1434885828buyInstantGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyInstantGroup",_loc2_,param1));
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
      public function get buyInstantLabel() : LocaLabel
      {
         return this._1438983993buyInstantLabel;
      }
      
      public function set buyInstantLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1438983993buyInstantLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1438983993buyInstantLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyInstantLabel",_loc2_,param1));
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
      public function get collectButton() : MultistateButton
      {
         return this._1932038916collectButton;
      }
      
      public function set collectButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1932038916collectButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1932038916collectButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectButton",_loc2_,param1));
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
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1213523686infoLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
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
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryGroup() : VGroup
      {
         return this._96419224masteryGroup;
      }
      
      public function set masteryGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._96419224masteryGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._96419224masteryGroup = param1;
                  addr0037:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
            addr0072:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85291001masteryStar0;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._85291001masteryStar0 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85291000masteryStar1;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._85291000masteryStar1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
         }
         addr0077:
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85290999masteryStar2;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._85290999masteryStar2 = param1;
                  addr0049:
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0077);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290998masteryStar3;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._85290998masteryStar3 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
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
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290997masteryStar4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._85290997masteryStar4 = param1;
                  addr003e:
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
            addr007c:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : SlimProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:SlimProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1131509414progressBar = param1;
                  if(_loc3_ || _loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003f:
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
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
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeIcon() : BriskImageDynaLib
      {
         return this._1844912971upgradeIcon;
      }
      
      public function set upgradeIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1844912971upgradeIcon;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1844912971upgradeIcon = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
      }
   }
}

