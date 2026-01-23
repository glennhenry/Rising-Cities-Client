package net.bigpoint.cityrama.controller.preloaderStartup
{
   import com.greensock.loading.LoaderMax;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.preloader.PreloaderMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PreloaderViewPrepCommand extends SimpleCommand implements ICommand
   {
      
      public function PreloaderViewPrepCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            LoaderMax.defaultAuditSize = false;
         }
         var _loc2_:MainApplication = param1.getBody() as MainApplication;
         if(_loc4_ || Boolean(this))
         {
            facade.registerMediator(new ApplicationMediator(ApplicationMediator.NAME,_loc2_));
            if(_loc4_)
            {
               facade.registerMediator(new PreloaderMediator(PreloaderMediator.NAME,_loc2_.preloaderView));
            }
         }
      }
   }
}

