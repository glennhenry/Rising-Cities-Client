package net.bigpoint.cityrama.view.cityWheel
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelTabVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelBuffItemRenderer;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelRewardItemRenderer;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelTab;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventLayerMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeaturedEventCityWheelMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FeaturedEventCityWheelMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "FeaturedEventCityWheelMediator";
      }
      
      private var _component:CityWheelTab;
      
      private var _cWP:CityWheelProxy;
      
      private var _fEP:FeaturedEventProxy;
      
      private var _sP:SoundProxy;
      
      private var _data:CityWheelTabVo;
      
      private var _gcP:GameConfigProxy;
      
      public function FeaturedEventCityWheelMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(NAME,param1);
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            sendNotification(VirtualTaskNotificationInterest.CITY_WHEEL_LAYER_OPEN);
            if(_loc1_)
            {
               this.setupCityWheel();
            }
         }
      }
      
      private function setupCityWheel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(!this.cityWheelProxy)
            {
               if(_loc2_ || _loc2_)
               {
                  return;
               }
               addr0046:
               this._component = new CityWheelTab();
               if(_loc2_)
               {
                  addr0056:
                  if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr007f:
                        facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr009a:
                           §§push(facade);
                           §§push(§§findproperty(UserInterfaceInfoLayerMediator));
                           §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine,this.component.uiInfolayerAlignmentLine2],this));
                           if(!_loc1_)
                           {
                              this.addListener();
                              if(_loc2_)
                              {
                                 this.setComponentData();
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr00ff:
                                    this.container.contentGroup.addElement(this.component);
                                 }
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00ff);
            }
            else if(!this.component)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0046);
               }
               §§goto(addr007f);
            }
            §§goto(addr0056);
         }
         §§goto(addr0046);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§push(CityWheelItemEvent.ITEM_OVER);
               if(_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.uiInfoLayerOverHandler);
                  if(_loc1_)
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(CityWheelItemEvent.ITEM_OUT);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().addEventListener(§§pop(),this.uiInfoLayerOutHandler);
                           if(!_loc2_)
                           {
                              §§push(this.component);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(CityWheelTab.BUY_SPIN_TOKEN);
                                 if(_loc1_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.buySpinTokenHandler);
                                    if(!_loc2_)
                                    {
                                       §§push(this.component);
                                       if(_loc1_)
                                       {
                                          §§push(CityWheelTab.BUY_BUFF_TOKEN);
                                          if(!_loc2_)
                                          {
                                             addr00ab:
                                             §§pop().addEventListener(§§pop(),this.buyBuffTokenHandler);
                                             if(_loc1_ || _loc2_)
                                             {
                                                addr00bf:
                                                §§push(this.component);
                                                if(_loc1_)
                                                {
                                                   addr00c8:
                                                   §§push(CityWheelTab.SPIN_WHEEL);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.spinWheelHandler);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.component);
                                                         if(_loc1_)
                                                         {
                                                            §§push(CityWheelTab.COLLECT_REWARDS);
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.handleCollectRewards);
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  §§push(this.component);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(CityWheelTab.PLAY_SPIN_SOUND_MAIN);
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§pop().addEventListener(§§pop(),this.handlePlaySpinSoundMain);
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           §§push(this.component);
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(CityWheelTab.PLAY_STOP_SOUND_MAIN);
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 addr016f:
                                                                                 §§pop().addEventListener(§§pop(),this.handlePlayStopSoundMain);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr017c:
                                                                                    §§push(this.component);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0185:
                                                                                       §§push(CityWheelTab.PLAY_SPIN_SOUND_BUFF);
                                                                                       if(_loc1_ || _loc2_)
                                                                                       {
                                                                                          addr0198:
                                                                                          §§pop().addEventListener(§§pop(),this.handlePlaySpinSoundBuff);
                                                                                          if(!(_loc2_ && _loc1_))
                                                                                          {
                                                                                             addr01ad:
                                                                                             §§push(this.component);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr01b6:
                                                                                                §§push(CityWheelTab.PLAY_STOP_SOUND_BUFF);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr01c1:
                                                                                                   §§pop().addEventListener(§§pop(),this.handlePlayStopSoundBuff);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr01cd:
                                                                                                      §§push(this.component);
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(CityWheelTab.PLAY_MAIN_SELECTED_SOUND);
                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                         {
                                                                                                            addr01f1:
                                                                                                            §§pop().addEventListener(§§pop(),this.handlePlaySelectMainSound);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(this.component);
                                                                                                               if(_loc1_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(CityWheelTab.PLAY_BUFF_SELECTED_SOUND);
                                                                                                                  if(_loc1_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr0221:
                                                                                                                     §§pop().addEventListener(§§pop(),this.handlePlaySelectBuffSound);
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr0235:
                                                                                                                        §§push(this.component);
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           addr023e:
                                                                                                                           §§push(CityWheelTab.PLAY_REWARD_SOUND);
                                                                                                                           if(_loc1_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr0251:
                                                                                                                              §§pop().addEventListener(§§pop(),this.handlePlayRewardSound);
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 addr025e:
                                                                                                                                 §§push(this.component);
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    addr0267:
                                                                                                                                    §§push(CityWheelTab.SHOW_INFOLAYER_NO_SPIN);
                                                                                                                                    if(!(_loc2_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§pop().addEventListener(§§pop(),this.showLockedUiInfoLayer);
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr0286:
                                                                                                                                          §§push(this.component);
                                                                                                                                          if(!(_loc2_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             addr0297:
                                                                                                                                             §§push(CityWheelTab.SHOW_INFOLAYER_NO_BUFF);
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr02a2);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02d4);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02c9);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02ae);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02ea);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02c9);
                                                                                                                              }
                                                                                                                              §§goto(addr02ae);
                                                                                                                           }
                                                                                                                           §§goto(addr02d4);
                                                                                                                        }
                                                                                                                        §§goto(addr02c9);
                                                                                                                     }
                                                                                                                     §§goto(addr025e);
                                                                                                                  }
                                                                                                                  §§goto(addr0251);
                                                                                                               }
                                                                                                               §§goto(addr0267);
                                                                                                            }
                                                                                                            §§goto(addr025e);
                                                                                                         }
                                                                                                         §§goto(addr0221);
                                                                                                      }
                                                                                                      §§goto(addr0297);
                                                                                                   }
                                                                                                   §§goto(addr0286);
                                                                                                }
                                                                                                §§goto(addr01f1);
                                                                                             }
                                                                                             §§goto(addr02c9);
                                                                                          }
                                                                                          §§goto(addr0235);
                                                                                       }
                                                                                       §§goto(addr01c1);
                                                                                    }
                                                                                    §§goto(addr023e);
                                                                                 }
                                                                                 §§goto(addr01cd);
                                                                              }
                                                                              §§goto(addr0221);
                                                                           }
                                                                           §§goto(addr0267);
                                                                        }
                                                                        §§goto(addr01ad);
                                                                     }
                                                                     §§goto(addr02d4);
                                                                  }
                                                                  §§goto(addr0185);
                                                               }
                                                               §§goto(addr01cd);
                                                            }
                                                            addr02a2:
                                                            §§pop().addEventListener(§§pop(),this.showLockedUiInfoLayer);
                                                            if(!_loc2_)
                                                            {
                                                               addr02ae:
                                                               §§push(this.component);
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  addr02c9:
                                                                  §§push(CityWheelTab.SHOW_INFOLAYER_BUFF_LOCKED);
                                                                  if(_loc1_)
                                                                  {
                                                                     addr02d4:
                                                                     §§pop().addEventListener(§§pop(),this.showLockedUiInfoLayer);
                                                                     if(_loc1_)
                                                                     {
                                                                        addr02ea:
                                                                        this.component.addEventListener(CityWheelTab.HIDE_INFOLAYER,this.hideLockedUiInfoLayer);
                                                                        addr02e4:
                                                                        addr02e0:
                                                                     }
                                                                     §§goto(addr02f2);
                                                                  }
                                                                  §§goto(addr02ea);
                                                               }
                                                               §§goto(addr02e4);
                                                            }
                                                            addr02f2:
                                                            return;
                                                         }
                                                         §§goto(addr023e);
                                                      }
                                                      §§goto(addr02e0);
                                                   }
                                                   §§goto(addr0198);
                                                }
                                                §§goto(addr0297);
                                             }
                                             §§goto(addr01ad);
                                          }
                                          §§goto(addr016f);
                                       }
                                       §§goto(addr00c8);
                                    }
                                    §§goto(addr01ad);
                                 }
                                 §§goto(addr00ab);
                              }
                              §§goto(addr01b6);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr0198);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr017c);
               }
               §§goto(addr0221);
            }
            §§goto(addr01b6);
         }
         §§goto(addr01ad);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.removeListener();
            if(_loc1_)
            {
               this.stopSound();
               if(_loc1_)
               {
                  §§goto(addr0035);
               }
               §§goto(addr0047);
            }
            addr0035:
            super.onRemove();
            if(!(_loc2_ && Boolean(this)))
            {
               addr0047:
               sendNotification(VirtualTaskNotificationInterest.CITY_WHEEL_LAYER_CLOSED);
            }
            §§goto(addr0052);
         }
         addr0052:
      }
      
      private function stopSound() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.soundProxy);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().stopCityWheelSpinSoundMain();
               if(!_loc2_)
               {
                  §§push(this.soundProxy);
                  if(!_loc2_)
                  {
                     addr004c:
                     §§pop().stopCityWheelStopSoundMain();
                     if(_loc1_)
                     {
                        §§push(this.soundProxy);
                        if(!_loc2_)
                        {
                           §§pop().stopCityWheelSpinSoundBuff();
                           if(_loc1_ || _loc1_)
                           {
                              addr0075:
                              this.soundProxy.stopCityWheelStopSoundBuff();
                              addr0071:
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0075);
               }
               addr007a:
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr0071);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.component);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§push(CityWheelItemEvent.ITEM_OVER);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§pop().removeEventListener(§§pop(),this.uiInfoLayerOverHandler);
                           if(!_loc1_)
                           {
                              §§push(this.component);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(CityWheelItemEvent.ITEM_OUT);
                                 if(!_loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.uiInfoLayerOutHandler);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§push(this.component);
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr00ab:
                                          §§push(CityWheelTab.BUY_SPIN_TOKEN);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§pop().removeEventListener(§§pop(),this.buySpinTokenHandler);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(this.component);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(CityWheelTab.BUY_BUFF_TOKEN);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr00f6:
                                                      §§pop().removeEventListener(§§pop(),this.buyBuffTokenHandler);
                                                      if(_loc2_)
                                                      {
                                                         §§push(this.component);
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            §§push(CityWheelTab.SPIN_WHEEL);
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.spinWheelHandler);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(this.component);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr013c:
                                                                     §§push(CityWheelTab.COLLECT_REWARDS);
                                                                     if(!(_loc1_ && _loc2_))
                                                                     {
                                                                        §§pop().removeEventListener(§§pop(),this.handleCollectRewards);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           addr0163:
                                                                           §§push(this.component);
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              §§push(CityWheelTab.PLAY_SPIN_SOUND_MAIN);
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 §§pop().removeEventListener(§§pop(),this.handlePlaySpinSoundMain);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr019e:
                                                                                    §§push(this.component);
                                                                                    if(_loc2_ || _loc1_)
                                                                                    {
                                                                                       §§push(CityWheelTab.PLAY_STOP_SOUND_MAIN);
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr01ba:
                                                                                          §§pop().removeEventListener(§§pop(),this.handlePlayStopSoundMain);
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             addr01cf:
                                                                                             §§push(this.component);
                                                                                             if(_loc2_ || Boolean(this))
                                                                                             {
                                                                                                §§push(CityWheelTab.PLAY_SPIN_SOUND_BUFF);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr01eb:
                                                                                                   §§pop().removeEventListener(§§pop(),this.handlePlaySpinSoundBuff);
                                                                                                   if(_loc2_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(this.component);
                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0211:
                                                                                                         §§push(CityWheelTab.PLAY_STOP_SOUND_BUFF);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§pop().removeEventListener(§§pop(),this.handlePlayStopSoundBuff);
                                                                                                            if(_loc2_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0230:
                                                                                                               §§push(this.component);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  addr0239:
                                                                                                                  §§push(CityWheelTab.PLAY_MAIN_SELECTED_SOUND);
                                                                                                                  if(!(_loc1_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr024c:
                                                                                                                     §§pop().removeEventListener(§§pop(),this.handlePlaySelectMainSound);
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.component);
                                                                                                                        if(!_loc1_)
                                                                                                                        {
                                                                                                                           addr0261:
                                                                                                                           §§push(CityWheelTab.PLAY_BUFF_SELECTED_SOUND);
                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§pop().removeEventListener(§§pop(),this.handlePlaySelectBuffSound);
                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr0288:
                                                                                                                                 §§push(this.component);
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr0299:
                                                                                                                                    §§push(CityWheelTab.PLAY_REWARD_SOUND);
                                                                                                                                    if(!_loc1_)
                                                                                                                                    {
                                                                                                                                       addr02a4:
                                                                                                                                       §§pop().removeEventListener(§§pop(),this.handlePlayRewardSound);
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(this.component);
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             addr02c2:
                                                                                                                                             §§push(CityWheelTab.SHOW_INFOLAYER_NO_SPIN);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().removeEventListener(§§pop(),this.showLockedUiInfoLayer);
                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   addr02e1:
                                                                                                                                                   §§push(this.component);
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr02ea:
                                                                                                                                                      §§push(CityWheelTab.SHOW_INFOLAYER_NO_BUFF);
                                                                                                                                                      if(!_loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr02f5:
                                                                                                                                                         §§pop().removeEventListener(§§pop(),this.showLockedUiInfoLayer);
                                                                                                                                                         if(!(_loc1_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.component);
                                                                                                                                                            if(!_loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr0312:
                                                                                                                                                               §§push(CityWheelTab.SHOW_INFOLAYER_BUFF_LOCKED);
                                                                                                                                                               if(_loc2_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr032f:
                                                                                                                                                                  §§pop().removeEventListener(§§pop(),this.showLockedUiInfoLayer);
                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr034d:
                                                                                                                                                                     this.component.removeEventListener(CityWheelTab.HIDE_INFOLAYER,this.hideLockedUiInfoLayer);
                                                                                                                                                                     addr0347:
                                                                                                                                                                     addr0343:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0355);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr034d);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0347);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0343);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr034d);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0312);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0355);
                                                                                                                                             }
                                                                                                                                             §§goto(addr032f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02ea);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02e1);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02f5);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02ea);
                                                                                                                              }
                                                                                                                              §§goto(addr02e1);
                                                                                                                           }
                                                                                                                           §§goto(addr034d);
                                                                                                                        }
                                                                                                                        §§goto(addr0347);
                                                                                                                     }
                                                                                                                     §§goto(addr0288);
                                                                                                                  }
                                                                                                                  §§goto(addr02a4);
                                                                                                               }
                                                                                                               §§goto(addr0299);
                                                                                                            }
                                                                                                            §§goto(addr0355);
                                                                                                         }
                                                                                                         §§goto(addr034d);
                                                                                                      }
                                                                                                      §§goto(addr0261);
                                                                                                   }
                                                                                                   §§goto(addr0355);
                                                                                                }
                                                                                                §§goto(addr034d);
                                                                                             }
                                                                                             §§goto(addr0211);
                                                                                          }
                                                                                          §§goto(addr02e1);
                                                                                       }
                                                                                       §§goto(addr024c);
                                                                                    }
                                                                                    §§goto(addr0261);
                                                                                 }
                                                                                 §§goto(addr02e1);
                                                                              }
                                                                              §§goto(addr034d);
                                                                           }
                                                                           §§goto(addr0347);
                                                                        }
                                                                        §§goto(addr0355);
                                                                     }
                                                                     §§goto(addr02f5);
                                                                  }
                                                                  §§goto(addr02c2);
                                                               }
                                                               §§goto(addr01cf);
                                                            }
                                                            §§goto(addr01ba);
                                                         }
                                                         §§goto(addr0299);
                                                      }
                                                      §§goto(addr0343);
                                                   }
                                                   §§goto(addr024c);
                                                }
                                                §§goto(addr0211);
                                             }
                                             §§goto(addr0163);
                                          }
                                          §§goto(addr01eb);
                                       }
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr01cf);
                                 }
                                 §§goto(addr02a4);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr01cf);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr0299);
                  }
                  §§goto(addr0230);
               }
               addr0355:
               return;
            }
            §§goto(addr0239);
         }
         §§goto(addr019e);
      }
      
      private function handleCollectRewards(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0041);
               }
            }
            §§goto(addr004b);
         }
         addr0041:
         param1.stopPropagation();
         if(_loc3_)
         {
            addr004b:
            TweenMax.delayedCall(0.2,this.collectRewardsDelayed);
         }
      }
      
      private function collectRewardsDelayed() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            TweenMax.killDelayedCallsTo(this.collectRewardsDelayed);
         }
         var _loc1_:* = false;
         var _loc2_:ArrayCollection = this.featuredEventProxy.cityWheelDrawnRewards;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            if(!_loc2_)
            {
               if(!_loc5_)
               {
                  return;
               }
               addr010d:
               _loc1_ = true;
               addr010c:
               if(_loc5_ && Boolean(_loc2_))
               {
                  while(true)
                  {
                     if(_loc3_ >= _loc2_.length)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push((_loc2_[_loc3_] as RewardItemComponentVo).configId == (this.cityWheelProxy.lastCollectedRewards[_loc3_] as RewardItemComponentVo).configId);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(!§§pop());
                           if(!_loc5_)
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              if(!_temp_5)
                              {
                                 if(_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push((_loc2_[_loc3_] as RewardItemComponentVo).type == (this.cityWheelProxy.lastCollectedRewards[_loc3_] as RewardItemComponentVo).type);
                                       if(!_loc5_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             addr01a0:
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr01aa:
                                                   §§push(true);
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      addr01b9:
                                                      _loc1_ = §§pop();
                                                      if(_loc5_ && Boolean(_loc2_))
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   addr01f6:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr0200:
                                                         sendNotification(MiniLayerConstants.OPEN_MINI_CITY_WHEEL_REWARDS_LAYER);
                                                      }
                                                   }
                                                }
                                                §§goto(addr020b);
                                             }
                                             _loc3_++;
                                             if(_loc4_ || Boolean(this))
                                             {
                                                continue;
                                             }
                                             §§goto(addr0200);
                                          }
                                          §§goto(addr01f6);
                                       }
                                       §§goto(addr01a0);
                                    }
                                    §§goto(addr01aa);
                                 }
                              }
                              §§goto(addr01a0);
                           }
                        }
                        §§goto(addr01b9);
                     }
                     addr020b:
                     return;
                  }
                  addr01e7:
               }
               addr01f5:
               §§goto(addr01f6);
               §§push(_loc1_);
            }
            else
            {
               §§push(this.cityWheelProxy);
               if(_loc4_ || Boolean(_loc2_))
               {
                  §§push(§§pop().lastCollectedRewards == null);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     var _temp_12:* = §§pop();
                     §§push(_temp_12);
                     §§push(_temp_12);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 addr00a4:
                                 §§push(this.cityWheelProxy.lastCollectedRewards.length == 0);
                                 if(_loc4_)
                                 {
                                    addr00b2:
                                    var _temp_14:* = §§pop();
                                    addr00b3:
                                    §§push(_temp_14);
                                    if(!_temp_14)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(_loc4_ || _loc1_)
                                          {
                                             addr00cc:
                                             §§push(_loc2_.length == this.cityWheelProxy.lastCollectedRewards.length);
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                §§push(!§§pop());
                                                if(!_loc5_)
                                                {
                                                   addr00fa:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         §§goto(addr010c);
                                                      }
                                                      §§goto(addr01f5);
                                                   }
                                                   else
                                                   {
                                                      _loc3_ = 0;
                                                   }
                                                   §§goto(addr01e7);
                                                }
                                                §§goto(addr010d);
                                             }
                                             §§goto(addr00fa);
                                          }
                                          §§goto(addr010c);
                                       }
                                    }
                                 }
                                 §§goto(addr00fa);
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr00a4);
            }
            §§goto(addr01e7);
         }
         §§goto(addr010c);
      }
      
      private function uiInfoLayerOutHandler(param1:CityWheelItemEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function uiInfoLayerOverHandler(param1:CityWheelItemEvent) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:SimpleTextUiInfolayerContentVo = null;
         var _loc7_:* = NaN;
         var _loc8_:* = null;
         var _loc2_:Point = param1.target.localToGlobal(new Point());
         if(!_loc10_)
         {
            _loc2_.x += param1.target.width / 2;
            if(!_loc10_)
            {
               §§push(param1.target is CityWheelBuffItemRenderer);
               if(!_loc10_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(_loc9_ || Boolean(param1))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr0085:
                           §§pop();
                           if(_loc9_)
                           {
                              addr008c:
                              §§push(this.component);
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 §§push(§§pop().isWheelBuffSpinning);
                                 if(_loc9_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc9_)
                                    {
                                       addr00ae:
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(this._data);
                                             if(!(_loc10_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop());
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                   var _temp_6:* = §§pop();
                                                   §§push(_temp_6);
                                                   §§push(_temp_6);
                                                   if(_loc9_ || Boolean(param1))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§pop();
                                                            if(_loc9_)
                                                            {
                                                               §§push(this._data);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop().buffData);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr010f:
                                                                     var _temp_8:* = §§pop();
                                                                     §§push(_temp_8);
                                                                     §§push(_temp_8);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr0116:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc10_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr0128:
                                                                              §§pop();
                                                                              if(!(_loc10_ && Boolean(this)))
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop().buffData.length > 0);
                                                                                    if(!(_loc10_ && Boolean(param1)))
                                                                                    {
                                                                                       addr0157:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(ConfigCityWheelBuffDTO(this._data.buffData[param1.elementIndex]).localeId);
                                                                                             if(!(_loc10_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc9_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(LocaUtils);
                                                                                                      §§push("rcl.booklayer.cityWheel");
                                                                                                      §§push("rcl.booklayer.cityWheel.buff.name.capital.");
                                                                                                      if(_loc9_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc3_);
                                                                                                      }
                                                                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc10_ && Boolean(this)))
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(_loc9_ || Boolean(param1))
                                                                                                            {
                                                                                                               §§push(LocaUtils);
                                                                                                               §§push("rcl.booklayer.cityWheel");
                                                                                                               §§push("rcl.booklayer.cityWheel.buff.description.");
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc3_);
                                                                                                               }
                                                                                                               §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc9_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§goto(addr021b);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0384);
                                                                                                            }
                                                                                                            §§goto(addr0423);
                                                                                                         }
                                                                                                         §§goto(addr021b);
                                                                                                      }
                                                                                                      §§goto(addr0384);
                                                                                                   }
                                                                                                   §§goto(addr036c);
                                                                                                }
                                                                                                addr021b:
                                                                                                _loc5_ = §§pop();
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc6_ = new SimpleTextUiInfolayerContentVo(1,_loc2_,_loc5_,_loc4_);
                                                                                                   _loc6_.width = 230;
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_,NAME);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr02b0:
                                                                                                   §§push(this._data);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr02ba:
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc9_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr02ca:
                                                                                                         var _temp_21:* = §§pop();
                                                                                                         §§push(_temp_21);
                                                                                                         §§push(_temp_21);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr02db:
                                                                                                                  §§pop();
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(this._data);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr02ec:
                                                                                                                        §§push(§§pop().rewardData);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr02f7:
                                                                                                                           var _temp_22:* = §§pop();
                                                                                                                           addr02f8:
                                                                                                                           §§push(_temp_22);
                                                                                                                           if(_temp_22)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc10_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr0325);
                                                                                                                                 }
                                                                                                                                 §§goto(addr032f);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr0325:
                                                                                                                     }
                                                                                                                     §§goto(addr031d);
                                                                                                                  }
                                                                                                                  §§goto(addr039c);
                                                                                                               }
                                                                                                               §§goto(addr0325);
                                                                                                            }
                                                                                                            §§goto(addr02f7);
                                                                                                         }
                                                                                                         §§goto(addr02f8);
                                                                                                      }
                                                                                                      §§goto(addr02f7);
                                                                                                   }
                                                                                                   addr031d:
                                                                                                   if(this._data.rewardData.length > 0)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr032f:
                                                                                                         §§push(CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).outputType);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr034d:
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               _loc8_ = §§pop();
                                                                                                               if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr0384:
                                                                                                                  addr036c:
                                                                                                                  if(CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).outputType == ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION)
                                                                                                                  {
                                                                                                                     if(_loc9_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr039c:
                                                                                                                        §§push(this.configProxy.getFirstLevelConfigOfBuilding(this.configProxy.getConfigPlayfieldItemsByPermissionId(CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).rewardConfigId)[0].id).id);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc9_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr0423:
                                                                                                                                 sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                                                                                                                                    "cid":_loc7_,
                                                                                                                                    "lineId":0,
                                                                                                                                    "pt":_loc2_,
                                                                                                                                    "type":_loc8_
                                                                                                                                 },NAME);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr041b:
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0423);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0444);
                                                                                                                        }
                                                                                                                        §§goto(addr041b);
                                                                                                                     }
                                                                                                                     §§goto(addr0444);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).rewardConfigId);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr041b);
                                                                                                               }
                                                                                                               §§goto(addr039c);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0384);
                                                                                                      }
                                                                                                      §§goto(addr0423);
                                                                                                   }
                                                                                                   §§goto(addr0444);
                                                                                                }
                                                                                                §§goto(addr0444);
                                                                                             }
                                                                                             §§goto(addr034d);
                                                                                          }
                                                                                          §§goto(addr0423);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr029e:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc10_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§goto(addr02b0);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr0444:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr02ec);
                                                                              }
                                                                              §§goto(addr02b0);
                                                                           }
                                                                           §§goto(addr02ca);
                                                                        }
                                                                        §§goto(addr0157);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0271:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc10_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr0283:
                                                                              §§pop();
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr028e:
                                                                                 §§push(this.component.isWheelMainSpinning);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§goto(addr029e);
                                                                                    }
                                                                                    §§goto(addr0325);
                                                                                 }
                                                                                 §§goto(addr029e);
                                                                              }
                                                                              §§goto(addr0423);
                                                                           }
                                                                           §§goto(addr02f7);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr029e);
                                                               }
                                                               §§goto(addr02ba);
                                                            }
                                                            §§goto(addr0423);
                                                         }
                                                         §§goto(addr0128);
                                                      }
                                                      §§goto(addr010f);
                                                   }
                                                   §§goto(addr0116);
                                                }
                                                §§goto(addr02db);
                                             }
                                             §§goto(addr031d);
                                          }
                                          §§goto(addr032f);
                                       }
                                       else
                                       {
                                          §§push(param1.target is CityWheelRewardItemRenderer);
                                          if(_loc9_)
                                          {
                                             var _temp_31:* = §§pop();
                                             §§push(_temp_31);
                                             §§push(_temp_31);
                                             if(_loc9_ || Boolean(_loc3_))
                                             {
                                                §§goto(addr0271);
                                             }
                                             §§goto(addr02f8);
                                          }
                                       }
                                       §§goto(addr0283);
                                    }
                                    §§goto(addr029e);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr028e);
                           }
                           §§goto(addr039c);
                        }
                        §§goto(addr029e);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0271);
               }
               §§goto(addr0085);
            }
            §§goto(addr02b0);
         }
         §§goto(addr008c);
      }
      
      private function setComponentData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.cityWheelProxy);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr0028);
                  }
                  else
                  {
                     addr011a:
                     this.handleCollectRewards(null);
                  }
               }
               else
               {
                  §§push(this.nothingSpinning);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           this._data = this.featuredEventProxy.cityWheelTabVo;
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(Boolean(this._data));
                              if(!_loc1_)
                              {
                                 var _temp_3:* = §§pop();
                                 §§push(_temp_3);
                                 §§push(_temp_3);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§goto(addr008d);
                                       }
                                       §§goto(addr00dc);
                                    }
                                    §§goto(addr00a2);
                                 }
                                 §§goto(addr00dd);
                              }
                              addr008d:
                              §§pop();
                              if(!_loc1_)
                              {
                                 addr0093:
                                 §§push(this.component);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       addr00a2:
                                       if(§§pop())
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§goto(addr00b7);
                                          }
                                          §§goto(addr00fe);
                                       }
                                       §§goto(addr00c2);
                                    }
                                    §§goto(addr00dc);
                                 }
                                 addr00b7:
                                 this.component.data = this._data;
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr0093);
                        }
                        addr00b3:
                        if(!_loc1_)
                        {
                           addr00c2:
                           addr00c6:
                           §§push(this.cityWheelProxy.rewardsReadyToCollect);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 addr00dc:
                                 var _temp_8:* = §§pop();
                                 addr00dd:
                                 §§push(_temp_8);
                                 if(_temp_8)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          §§goto(addr0111);
                                       }
                                       §§goto(addr011a);
                                    }
                                    §§goto(addr0110);
                                 }
                              }
                              addr0111:
                              addr00fe:
                              §§push(this.nothingSpinning);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0110:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr011a);
                                 }
                              }
                              §§goto(addr0120);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr0120);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr008d);
               }
               addr0120:
               return;
            }
            §§goto(addr00c6);
         }
         addr0028:
      }
      
      private function get nothingSpinning() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this.component);
                              if(!_loc2_)
                              {
                                 addr005c:
                                 §§push(§§pop().isWheelMainSpinning);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(!§§pop());
                                    if(_loc1_)
                                    {
                                       addr007c:
                                       var _temp_5:* = §§pop();
                                       addr007d:
                                       §§push(_temp_5);
                                       if(_temp_5)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr0086:
                                             §§pop();
                                             §§goto(addr009c);
                                          }
                                          §§goto(addr009b);
                                       }
                                       addr009c:
                                       §§goto(addr008b);
                                    }
                                    §§goto(addr0086);
                                 }
                                 §§goto(addr009b);
                              }
                              addr008b:
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr007c);
            }
            §§goto(addr005c);
         }
         addr0087:
         §§push(this.component.isWheelBuffSpinning);
         if(_loc1_ || _loc1_)
         {
            addr009b:
            return !§§pop();
         }
      }
      
      public function get container() : FeaturedEventLayer
      {
         return super.viewComponent as FeaturedEventLayer;
      }
      
      private function buySpinTokenHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN});
         }
      }
      
      private function buyBuffTokenHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN});
         }
      }
      
      private function spinWheelHandler(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this._data);
            if(_loc4_)
            {
               if(§§pop().numSpinTokens > 0)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     this.cityWheelProxy.lastCollectedRewards = null;
                     if(!_loc5_)
                     {
                        facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_SPIN);
                        if(!_loc5_)
                        {
                           addr005b:
                           §§push(this._data);
                           if(_loc4_)
                           {
                              addr0074:
                              var _loc2_:* = §§pop();
                              §§push(_loc2_.numSpinTokens);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc2_.numSpinTokens = _loc3_;
                              }
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 addr00b6:
                                 addr00b2:
                                 _loc2_ = this._data;
                                 §§push(_loc2_.numBuffTokens);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc4_ || Boolean(this))
                                 {
                                    _loc2_.numBuffTokens = _loc3_;
                                 }
                              }
                              §§goto(addr00da);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr005b);
                  }
                  §§goto(addr00b2);
               }
               addr00da:
               return;
            }
            §§goto(addr0074);
         }
         §§goto(addr00b2);
      }
      
      private function get component() : CityWheelTab
      {
         return this._component;
      }
      
      private function get cityWheelProxy() : CityWheelProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._cWP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     this._cWP = facade.retrieveProxy(CityWheelProxy.NAME) as CityWheelProxy;
                  }
               }
               addr004b:
               return this._cWP;
            }
         }
         §§goto(addr004b);
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._fEP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr003a:
                     this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  }
               }
               return this._fEP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._gcP);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0053:
                     this._gcP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._gcP;
            }
         }
         §§goto(addr0053);
      }
      
      private function get soundProxy() : SoundProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._sP);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  }
               }
               addr0054:
               return this._sP;
            }
         }
         §§goto(addr0054);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.CITY_WHEEL_REWARD_READY,ApplicationNotificationConstants.EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(param1))
         {
            §§push(ApplicationNotificationConstants.CITY_WHEEL_REWARD_READY);
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr00bd:
                        §§push(0);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr0142:
                        §§push(3);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr0159);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr00e4:
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(1);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr012d:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                              if(_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    addr0123:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr012d);
                                       }
                                       else
                                       {
                                          §§goto(addr0142);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr013e);
                                    }
                                    §§goto(addr0142);
                                 }
                                 addr013e:
                                 §§goto(addr013d);
                              }
                              addr013d:
                              if(ApplicationNotificationConstants.EVENTS_CHANGED === _loc2_)
                              {
                                 §§goto(addr0142);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr0159);
                           }
                           addr0159:
                           switch(§§pop())
                           {
                              case 0:
                                 this.component.setDrawnRewardsAndBuff(this.cityWheelProxy.drawnRewards,this.cityWheelProxy.drawnBuff);
                                 if(_loc4_ && Boolean(param1))
                                 {
                                 }
                                 break;
                              case 1:
                              case 2:
                                 this.setComponentData();
                                 if(_loc3_)
                                 {
                                    this.closeLayer();
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 break;
                              case 3:
                                 this.closeLayer();
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                           }
                           return;
                        }
                        §§goto(addr013e);
                     }
                     §§goto(addr013d);
                  }
               }
               §§goto(addr0123);
            }
            §§goto(addr00e4);
         }
         §§goto(addr00bd);
      }
      
      private function closeLayer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(!this.featuredEventProxy.cityWheelRunning)
            {
               if(_loc2_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,FeaturedEventLayerMediator.NAME);
               }
            }
         }
      }
      
      private function handlePlayRewardSound(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.soundProxy.playCityWheelRewardSound();
         }
      }
      
      private function handlePlaySpinSoundMain(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.soundProxy.playCityWheelSpinSoundMain();
         }
      }
      
      private function handlePlayStopSoundMain(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(this.soundProxy);
            if(_loc3_)
            {
               §§pop().stopCityWheelSpinSoundMain();
               if(_loc3_ || Boolean(param1))
               {
                  addr004a:
                  this.soundProxy.playCityWheelStopSoundMain();
                  addr0046:
               }
               return;
            }
            §§goto(addr004a);
         }
         §§goto(addr0046);
      }
      
      private function handlePlaySpinSoundBuff(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.soundProxy.playCityWheelSpinSoundBuff();
         }
      }
      
      private function handlePlayStopSoundBuff(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.soundProxy);
            if(_loc3_)
            {
               §§pop().stopCityWheelSpinSoundBuff();
               if(_loc3_)
               {
                  addr0036:
                  this.soundProxy.playCityWheelStopSoundBuff();
                  addr0032:
               }
               return;
            }
            §§goto(addr0036);
         }
         §§goto(addr0032);
      }
      
      private function handlePlaySelectMainSound(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.soundProxy.playCityWheelMainSelected();
         }
      }
      
      private function handlePlaySelectBuffSound(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.soundProxy.playCityWheelBuffSelected();
         }
      }
      
      private function showLockedUiInfoLayer(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:* = "";
         var _loc3_:* = "";
         var _loc4_:* = 0;
         var _loc7_:* = param1.type;
         if(_loc9_ || Boolean(param1))
         {
            §§push(CityWheelTab.SHOW_INFOLAYER_NO_SPIN);
            if(_loc9_ || Boolean(_loc3_))
            {
               if(§§pop() === _loc7_)
               {
                  if(_loc9_)
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                     }
                  }
                  else
                  {
                     addr01e2:
                     §§push(1);
                     if(_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(CityWheelTab.SHOW_INFOLAYER_NO_BUFF);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     if(§§pop() === _loc7_)
                     {
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           §§goto(addr01e2);
                        }
                        else
                        {
                           addr01fa:
                           §§push(2);
                           if(_loc8_ && Boolean(param1))
                           {
                           }
                        }
                        §§goto(addr021a);
                     }
                     else
                     {
                        §§goto(addr01f4);
                     }
                  }
                  addr01f4:
                  if(CityWheelTab.SHOW_INFOLAYER_BUFF_LOCKED === _loc7_)
                  {
                     §§goto(addr01fa);
                  }
                  else
                  {
                     §§push(3);
                  }
                  §§goto(addr021a);
               }
               addr021a:
               loop0:
               while(true)
               {
                  switch(§§pop())
                  {
                     case 0:
                        §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.mainWheel.status.inActive"));
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(_loc9_ || Boolean(_loc2_))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noSpin"));
                                 if(!(_loc8_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || Boolean(this))
                                    {
                                       addr0083:
                                       _loc3_ = §§pop();
                                       if(_loc8_)
                                       {
                                       }
                                       break loop0;
                                    }
                                    addr00e9:
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       addr016b:
                                       _loc3_ = §§pop();
                                       addr016a:
                                       if(_loc8_)
                                       {
                                       }
                                       break loop0;
                                    }
                                 }
                                 addr00f0:
                                 _loc3_ = §§pop();
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                              break loop0;
                           }
                           break;
                        }
                        §§goto(addr0083);
                     case 1:
                        §§push(1);
                        if(_loc9_)
                        {
                           _loc4_ = §§pop();
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.inActive"));
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop());
                                 if(!(_loc8_ && Boolean(_loc2_)))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noBuff"));
                                       if(_loc9_)
                                       {
                                          §§goto(addr00e9);
                                       }
                                       §§goto(addr00f0);
                                    }
                                    else
                                    {
                                       addr0129:
                                       §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.locked"));
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    §§goto(addr016a);
                                 }
                                 §§goto(addr00e9);
                              }
                              addr0142:
                              _loc2_ = §§pop();
                              if(!(_loc9_ || Boolean(_loc3_)))
                              {
                                 break loop0;
                              }
                              §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noSpin"));
                              if(!(_loc8_ && Boolean(param1)))
                              {
                                 §§goto(addr016a);
                              }
                              §§goto(addr016b);
                           }
                        }
                        else
                        {
                           addr0114:
                           _loc4_ = §§pop();
                           if(_loc8_)
                           {
                              break loop0;
                           }
                        }
                        §§goto(addr0129);
                     case 2:
                        §§push(1);
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           §§goto(addr0114);
                           break;
                        }
                        continue;
                     default:
                        break loop0;
                  }
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     §§goto(addr0142);
                  }
                  §§goto(addr016a);
               }
               var _loc5_:Point = this.component.wheelMain.localToGlobal(new Point());
               _loc5_.x += this.component.wheelMain.width / 2;
               var _loc6_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc4_,_loc5_,_loc3_,_loc2_);
               _loc6_.width = 230;
               if(!_loc8_)
               {
                  sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_,NAME);
               }
               return;
            }
            §§goto(addr01f4);
         }
         §§goto(addr01fa);
      }
      
      private function hideLockedUiInfoLayer(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
   }
}

