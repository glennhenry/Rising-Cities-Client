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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:HUDMediator = null;
         var _loc2_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         var _loc3_:ConfigUserLevelDTO = _loc2_.getConfigByLevelId(Number(param1.getBody()));
         _loc4_ = facade.retrieveMediator(HUDMediator.NAME) as HUDMediator;
         var _loc5_:Rectangle = _loc4_.levelBarRectangle;
         var _loc6_:Point = new Point(_loc5_.right,_loc5_.y + _loc5_.height * 0.5);
         this._hudParticleEmitter = DropIcon2DAnimationStrategyHQ.getStandardHUDReachEmitter();
         this._hudParticleEmitter.startX = 36;
         this._hudParticleEmitter.startY = 30;
         this._hudParticleEmitter.container = _loc4_.xpElementSparkleSprite;
         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,this._hudParticleEmitter);
         TweenMax.delayedCall(1,this.removeParticles);
         var _loc7_:DropIconVO = new DropIconVO("60041",_loc6_);
         _loc7_.isSubLevelDrop = true;
         sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc7_);
      }
      
      private function removeParticles() : void
      {
         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._hudParticleEmitter);
      }
   }
}

