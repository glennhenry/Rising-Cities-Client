package net.bigpoint.cityrama.controller.levelUp
{
   import com.greensock.TweenMax;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.view.field.strategys.DropIcon2DAnimationStrategyHQ;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.particles.particle.ParticleEmitterDecorator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SubLevelReachedCommand extends SimpleCommand implements ICommand
   {
      
      private var _hudParticleEmitter:ParticleEmitterDecorator;
      
      public function SubLevelReachedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:HUDMediator = null;
         var _loc2_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         var _loc3_:ConfigUserLevelDTO = _loc2_.getConfigByLevelId(Number(param1.getBody()));
         _loc4_ = facade.retrieveMediator(HUDMediator.NAME) as HUDMediator;
         var _loc5_:Rectangle = _loc4_.levelBarRectangle;
         var _loc6_:Point = new Point(_loc5_.right,_loc5_.y + _loc5_.height * 0.5);
         if(_loc8_ || Boolean(_loc3_))
         {
            this._hudParticleEmitter = DropIcon2DAnimationStrategyHQ.getStandardHUDReachEmitter();
            if(_loc8_ || Boolean(this))
            {
               addr00a9:
               §§push(this._hudParticleEmitter);
               if(!_loc9_)
               {
                  §§push(36);
                  if(!_loc9_)
                  {
                     §§pop().startX = §§pop();
                     if(!_loc9_)
                     {
                        §§push(this._hudParticleEmitter);
                        if(_loc8_)
                        {
                           addr00d0:
                           §§pop().startY = 30;
                           if(!_loc9_)
                           {
                              addr00dd:
                              this._hudParticleEmitter.container = _loc4_.xpElementSparkleSprite;
                              if(_loc8_ || Boolean(this))
                              {
                                 §§goto(addr00f4);
                              }
                              §§goto(addr0110);
                           }
                           addr00f4:
                           sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,this._hudParticleEmitter);
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              TweenMax.delayedCall(1,this.removeParticles);
                              addr0110:
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr00dd);
                     }
                     addr012a:
                     var _loc7_:DropIconVO = new DropIconVO("60041",_loc6_);
                     _loc7_.isSubLevelDrop = true;
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc7_);
                     }
                     return;
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00dd);
            }
            §§goto(addr0110);
         }
         §§goto(addr00a9);
      }
      
      private function removeParticles() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._hudParticleEmitter);
         }
      }
   }
}

