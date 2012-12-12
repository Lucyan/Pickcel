//
//  CapturaViewController.m
//  Pickcel
//
//  Created by Leonardo Olivares on 10-12-12.
//  Copyright (c) 2012 Reframe. All rights reserved.
//

#import "CapturaViewController.h"

@interface CapturaViewController () {
    UIImage *imagenOriginal;
}

@end

@implementation CapturaViewController
@synthesize imagenObtenidaVista, botonEnviarVista;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    botonEnviarVista.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cerrarObtenerDescuento:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)abrirCamara:(id)sender {
    [self iniciarCamara];
}

// Función para iniciar camara
- (void) iniciarCamara {
    DLCImagePickerController *pickerController = [[DLCImagePickerController alloc] init];
    
    pickerController.delegate = self;
    
    [self presentViewController:pickerController animated:YES completion:nil];
}

// Inicio Funciones UIImagePickerController


- (void) imagePickerController:(DLCImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    imagenOriginal = [info objectForKey:@"data"];
    
    
    [imagenObtenidaVista setImage:imagenOriginal];
    
    botonEnviarVista.enabled = YES;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) imagePickerControllerDidCancel:(DLCImagePickerController *)picker{
    // Botón Cancelar
    [self dismissViewControllerAnimated:YES completion:nil];
}

// Fin Funciones UIImagePickerController


@end
