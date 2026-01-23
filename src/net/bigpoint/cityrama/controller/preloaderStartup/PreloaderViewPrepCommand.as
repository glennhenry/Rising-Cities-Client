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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         LoaderMax.defaultAuditSize = false;
         var _loc2_:MainApplication = param1.getBody() as MainApplication;
         facade.registerMediator(new ApplicationMediator(ApplicationMediator.NAME,_loc2_));
         facade.registerMediator(new PreloaderMediator(PreloaderMediator.NAME,_loc2_.preloaderView));
      }
   }
}

