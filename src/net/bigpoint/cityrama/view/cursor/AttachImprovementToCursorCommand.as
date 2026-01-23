package net.bigpoint.cityrama.view.cursor
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class AttachImprovementToCursorCommand extends SimpleCommand
   {
      
      public function AttachImprovementToCursorCommand()
      {
         super();
      }
      
      public static function getColorByQuality(param1:String) : uint
      {
         switch(param1)
         {
            case ServerImprovementConstants.QUALITY_COMMON:
               return 11861760;
            case ServerImprovementConstants.QUALITY_EPIC:
               return 11491298;
            case ServerImprovementConstants.QUALITY_RARE:
               return 2208717;
            case ServerImprovementConstants.QUALITY_LEGENDARY:
               return 16751616;
            default:
               throw RamaCityError("Somethings wrong quality not found");
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:ConfigImprovementDTO = _loc3_.config.improvements[_loc2_];
         var _loc5_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         facade.registerMediator(new MouseAttachLayerMediator(MouseAttachLayerMediator.NAME,_loc5_.component.mainView.mouseAttachLayer));
         if(getColorByQuality(_loc4_.quality) != -1)
         {
            sendNotification(ApplicationNotificationConstants.ATTACH_GFX_TO_CURSOR,{
               "dynaVo":ImprovementLayerProxy.improvementGfx(_loc4_,ImprovementLayerProxy.SIZE_MINI),
               "trailColor":getColorByQuality(_loc4_.quality)
            });
         }
         var _loc6_:ImprovementCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
         _loc6_.currentSelectedImprovementCid = _loc4_.id;
      }
   }
}

